import numpy as np
from numba import njit, prange

@njit(parallel=True, fastmath=True, cache=True)
def match_batch_parallel(iterations, agg_order, asks_p, asks_s, a_count):
    p = agg_order[0]
    q = agg_order[1]
    
    #array for write results
    out_traded = np.empty(iterations, dtype=np.float64)
    
    for j in prange(iterations):
        rem_q = q
        local_traded = 0.0
        
        for i in range(a_count):
            if rem_q <= 0: break
            
            target_p = asks_p[i]
            if p >= target_p:
                target_q = asks_s[i]
                trade = rem_q if rem_q < target_q else target_q
                
                # do the real script work
                rem_q -= trade
                local_traded += trade
            else:
                break
        
        # Write in mem, (if not write numba just drop all cycle)
        out_traded[j] = local_traded
        
    return out_traded
