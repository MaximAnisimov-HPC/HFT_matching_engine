
import numpy as np
import time
from src.orderbook import OrderBook
from src.matcher_core import match_against_book

def run_performance_test(iterations=1_000_000):
    """
    Stress-Test Matching Engine and catch Tick-to-Trade.
    Goal: < 5-10 microseconds (5000-10000 ns).
    """
    # Pre-allocation at t=0
    max_depth = 1000
    ob = OrderBook(max_depth)
    
    # Fill orders
    for i in range(100):
        ob.add_limit_order(100.0 + i*0.1, 10.0, 1) # SELLs
    
    # Create incoming_args
    incoming_buy = np.array([105.0, 5.0, 0.0], dtype=np.float64) # BUY

    # WARMUP If we launch first (i can compile it to assembly code, that dont need warmup)
    _, _ = match_against_book(incoming_buy, ob.asks_price, ob.asks_size, ob.a_count)
    
    print(f"Starting Benchmark: {iterations:,} iterations...")

    # Micro-benchmarking
    latencies = np.empty(iterations, dtype=np.int64)
    
    for i in range(iterations):
        # Fall Volume, so that there is something to match
        ob.asks_size[0] = 10.0 
        
        start_ns = time.perf_counter_ns()
        
        # DO MATCH (hot paths)
        traded, remaining = match_against_book(incoming_buy, ob.asks_price, ob.asks_size, ob.a_count)
        
        end_ns = time.perf_counter_ns()
        latencies[i] = end_ns - start_ns

    # Analyze
    avg_latency = np.mean(latencies)
    p99_latency = np.percentile(latencies, 99)
    min_latency = np.min(latencies)
    
    print("\n" + "="*30)
    print("PERFORMANCE RESULTS")
    print("="*30)
    print(f"Min Latency:    {min_latency:>8.2f} ns")
    print(f"Avg Latency:    {avg_latency:>8.2f} ns ({(avg_latency/1000):.2f} µs)")
    print(f"P99 Latency:    {p99_latency:>8.2f} ns")
    print(f"Throughput:     {int(1e9 / avg_latency):,}/sec")
    print("="*30)

if __name__ == "__main__":
    run_performance_test()
