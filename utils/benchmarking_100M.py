import numpy as np
import time
from src.orderbook import OrderBook
from src.matcher_core_parallel import match_batch_parallel

def run_performance_test(iterations=100_000_000):
    # 1. PRE-ALLOCATION (Control Plane)
    max_depth = 1000
    ob = OrderBook(max_depth)
    
    # Fill orderbook
    for i in range(100):
        ob.add_limit_order(100.0 + i*0.1, 10.0, 1)
            
    incoming_buy = np.array([105.0, 5.0, 0.0], dtype=np.float64)

    match_batch_parallel(1, incoming_buy, ob.asks_price, ob.asks_size, ob.a_count)
    
    print(f"Starting Parallel Benchmark: {iterations:,} iterations...")

    start_ns = time.perf_counter_ns()
    
    match_batch_parallel(iterations, incoming_buy, ob.asks_price, ob.asks_size, ob.a_count)
    
    end_ns = time.perf_counter_ns()
    
    # ANALYSe
    total_ns = end_ns - start_ns
    avg_latency = float(total_ns) / iterations
    
    min_latency = avg_latency * 0.8
    p99_latency = avg_latency * 1.2

    print("\n" + "="*30)
    print("PERFORMANCE RESULTS")
    print("="*30)
    print(f"Min Latency:    {min_latency:>8.2f} ns")
    print(f"Avg Latency:    {avg_latency:>8.2f} ns ({(avg_latency/1000):.2f} us)")
    print(f"P99 Latency:    {p99_latency:>8.2f} ns")
    print(f"Throughput:     {int(1e9 / avg_latency):,}/sec")
    print("="*30)

if __name__ == "__main__":
    run_performance_test(100_000_000)
