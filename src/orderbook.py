import numpy as np
from numba import njit, int32, float64, deferred_type, optional
from numba.experimental import jitclass

# Type Locking to NUMBA
spec = [
    ('bids_price', float64[:]),
    ('bids_size', float64[:]),
    ('asks_price', float64[:]),
    ('asks_size', float64[:]),
    ('b_count', int32),
    ('a_count', int32),
]

@jitclass(spec)
class OrderBook:
    def __init__(self, max_depth):
        # Warranty - 100% pre-allocation with t=0. 
        # no appends or dynamical resize
        self.bids_price = np.zeros(max_depth, dtype=np.float64)
        self.bids_size = np.zeros(max_depth, dtype=np.float64)
        self.asks_price = np.zeros(max_depth, dtype=np.float64)
        self.asks_size = np.zeros(max_depth, dtype=np.float64)
        self.b_count = 0
        self.a_count = 0

    def add_limit_order(self, price, size, side):
        """
        Add limit orders. In HFT we shoul write the logic sorting 
        like a binary search or something.. but for experiment one i write SIMPLE exampl.
        """
        if side == 0: # BUY
            idx = self.b_count
            self.bids_price[idx] = price
            self.bids_size[idx] = size
            self.b_count += 1
        else: # SELL
            idx = self.a_count
            self.asks_price[idx] = price
            self.asks_size[idx] = size
            self.a_count += 1

    def get_best_bid(self):
        return self.bids_price[0] if self.b_count > 0 else 0.0

    def get_best_ask(self):
        return self.asks_price[0] if self.a_count > 0 else 0.0
