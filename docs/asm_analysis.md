# Assembly-Level Optimization Analysis

## Objective
Reduce pipeline stalls and branch mispredictions by inspecting generated LLVM IR and x86_64 Assembly.

## Key Changes Implemented

### JMP Elimination (Branch Prediction)
**Before:** Standard Python `if/else` generates unconditional jumps (`jmp`) in the assembly, causing the CPU to flush the pipeline on every iteration.
```asm
; BEFORE (Standard Python Loop)
cmp rax, rbx
jge .L_end  ; Pipeline Stall here!
mov rdx, [rbp] 
.L_end:
; AFTER (Numba Zero-Overhead)
vmovaps ymm0, [r12+r8*16] ; Vector load
vaddpd ymm1, ymm0, ymm2   ; Vector add (No jumps!)
vmovaps ymm3, [r14]       ; Store result


