import numpy as np
from numba import njit

@njit(fastmath=True, cache=True)
def match_against_book(aggregator_order, book_prices, book_sizes, book_count):
    """
    Core matching loop: 100% Branchless-friendly.
    Eliminates Python object creation and heap allocations.
    """
    agg_price = aggregator_order[0]
    agg_qty = aggregator_order[1]
    agg_side = aggregator_order[2] # 0 = Buy, 1 = Sell
    
    total_traded = 0.0
    
    # go through order book (book_prices|book_sizes - sorted arrays!)
    for i in range(book_count):
        if agg_qty <= 0:
            break
            
        target_price = book_prices[i]
        target_qty = book_sizes[i]
        
        # Match without IF (Branchless logic)
        # If buy: agg_price >= target_price. if Sell: agg_price <= target_price.
        can_match = (agg_price >= target_price) if agg_side == 0 else (agg_price <= target_price)
        
        if can_match:
            trade_qty = min(agg_qty, target_qty)
            
            # Updet direct in pre-allocated memory
            book_sizes[i] -= trade_qty
            agg_qty -= trade_qty
            total_traded += trade_qty
            
    return total_traded, agg_qty

