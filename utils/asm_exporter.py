from src.matcher_core import match_against_book
import numpy as np

def run_hardcore_audit(func_name):
    # REAL DATA FOR WARMUP
    incoming_order = np.array([105.0, 50.0, 0.0], dtype=np.float64) # BUY order imitation
    
    # pre-alloc bid\ask
    book_prices = np.linspace(100.0, 110.0, 100).astype(np.float64)
    book_sizes = np.ones(100, dtype=np.float64) * 10.0
    book_count = 100

    # warm-up
    _ = func_name(incoming_order, book_prices, book_sizes, book_count)

    # Filter algo
    asm_dict = func_name.inspect_asm()
    # First compiled option we take
    full_asm = list(asm_dict.values())[0]

    lines = full_asm.split('\n')
    clean_asm = []
    is_loop = False

    stats = {"SIMD (zmm/ymm)": 0, "Jumps (Tact Loss)": 0, "Vector Ops (v-prefix)": 0, "Total Lines": 0}

    for line in lines:
        l = line.strip().lower()
        # Start after see .lbb
        if l.startswith('.lbb'): is_loop = True
        
        if is_loop:
            clean_asm.append(line)
            stats["Total Lines"] += 1
            if 'zmm' in l or 'ymm' in l: stats["SIMD (zmm/ymm)"] += 1
            if l.startswith('j') and not l.startswith('jmp .lbb'): 
                stats["Jumps (Tact Loss)"] += 1
            if l.startswith('v') and not l.startswith('vzeroupper'): 
                stats["Vector Ops (v-prefix)"] += 1
        
        # end writing
        if 'retq' in l: is_loop = False

    # rec
    output_path = f"docs/optimized_analysis_{func_name.__name__}.asm"
    with open(output_path, "w") as f:
        f.write(f"--- HARDWARE SATURATION AUDIT: {func_name.__name__} ---\n")
        for k, v in stats.items(): 
            f.write(f"{k}: {v}\n")
        f.write("\n--- PRODUCTION-READY LOOP ASM ---\n")
        # writeline
        f.write('\n'.join(clean_asm)) 

    print(f"Audit Complete! Check '{output_path}'.")
    print(f"Stats: {stats}")

if __name__ == "__main__":
    run_hardcore_audit(match_against_book)