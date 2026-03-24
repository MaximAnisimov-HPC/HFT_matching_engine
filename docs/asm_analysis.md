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
; AFTER (Optimized Vector Path)
vmovapd zmm0, [rdi + rax*8]    ; Load 8 double-precision prices into ZMM
vcmppd  k1, zmm0, zmm1, 13     ; Compare prices into opmask register k1 (GE)
vblendmpd zmm2 {k1}, zmm0, zmm3 ; Branchless select based on mask


