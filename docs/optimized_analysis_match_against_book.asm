--- HARDWARE SATURATION AUDIT: match_against_book ---
SIMD (zmm/ymm): 6
Jumps (Tact Loss): 25
Vector Ops (v-prefix): 43
Total Lines: 311

--- READY LOOP ASM ---
.LBB0_12:
	incq	%r9
	cmpq	%r9, %rax
	je	.LBB0_13
.LBB0_9:
	vucomisd	%xmm3, %xmm0
	jbe	.LBB0_13
	vucomisd	(%r8,%r9,8), %xmm1
	jb	.LBB0_12
	vmovsd	(%rdx,%r9,8), %xmm4
	vminsd	%xmm0, %xmm4, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm4
	vsubsd	%xmm5, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm5, %xmm2
	vmovsd	%xmm4, (%rdx,%r9,8)
	jmp	.LBB0_12
.LBB0_1:
	vxorpd	%xmm2, %xmm2, %xmm2
.LBB0_13:
	vmovsd	%xmm2, (%rcx)
	xorl	%eax, %eax
	vmovsd	%xmm0, 8(%rcx)
	retq
.LBB0_3:
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.LBB0_4
	.p2align	4
.LBB0_7:
	incq	%r9
	cmpq	%r9, %rax
	je	.LBB0_13
.LBB0_4:
	vucomisd	%xmm3, %xmm0
	jbe	.LBB0_13
	vucomisd	(%r8,%r9,8), %xmm1
	ja	.LBB0_7
	vmovsd	(%rdx,%r9,8), %xmm4
	vminsd	%xmm0, %xmm4, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm4
	vsubsd	%xmm5, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm5, %xmm2
	vmovsd	%xmm4, (%rdx,%r9,8)
	jmp	.LBB0_7
.Lfunc_end0:
	.size	_ZN3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx, .Lfunc_end0-_ZN3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx

	.globl	_ZN7cpython3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx
	.p2align	4
	.type	_ZN7cpython3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx,@function
_ZN7cpython3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rsi
	.cfi_def_cfa_offset 48
	pushq	%rdi
	.cfi_def_cfa_offset 56
	pushq	%rbp
	.cfi_def_cfa_offset 64
	pushq	%rbx
	.cfi_def_cfa_offset 72
	subq	$472, %rsp
	vmovaps	%xmm7, 448(%rsp)
	vmovaps	%xmm6, 432(%rsp)
	.cfi_def_cfa_offset 544
	.cfi_offset %rbx, -72
	.cfi_offset %rbp, -64
	.cfi_offset %rdi, -56
	.cfi_offset %rsi, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	.cfi_offset %xmm6, -112
	.cfi_offset %xmm7, -96
	movq	%rdx, %rcx
	leaq	216(%rsp), %rdx
	leaq	208(%rsp), %rax
	leaq	224(%rsp), %r8
	movl	$4, %r9d
	movq	%rdx, 48(%rsp)
	leaq	232(%rsp), %rdx
	movq	%rax, 56(%rsp)
	movq	%r8, 40(%rsp)
	movabsq	$PyArg_UnpackTuple, %rax
	movl	$4, %r8d
	movq	%rdx, 32(%rsp)
	movabsq	$.const.match_against_book, %rdx
	callq	*%rax
	testl	%eax, %eax
	je	.LBB1_1
	movabsq	$_ZN08NumbaEnv3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx, %rax
	cmpq	$0, (%rax)
	je	.LBB1_4
	movq	232(%rsp), %rcx
	movabsq	$NRT_adapt_ndarray_from_python, %rbx
	leaq	368(%rsp), %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 368(%rsp)
	vmovups	%ymm0, 392(%rsp)
	vzeroupper
	callq	*%rbx
	testl	%eax, %eax
	jne	.LBB1_8
	cmpq	$8, 392(%rsp)
	jne	.LBB1_8
	movq	224(%rsp), %rcx
	movq	368(%rsp), %rsi
	movq	400(%rsp), %r12
	leaq	304(%rsp), %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 304(%rsp)
	vmovups	%ymm0, 328(%rsp)
	vzeroupper
	callq	*%rbx
	testl	%eax, %eax
	jne	.LBB1_11
	cmpq	$8, 328(%rsp)
	jne	.LBB1_11
	movq	216(%rsp), %rcx
	movq	304(%rsp), %rdi
	movq	336(%rsp), %r13
	leaq	240(%rsp), %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 240(%rsp)
	vmovups	%ymm0, 264(%rsp)
	vzeroupper
	callq	*%rbx
	testl	%eax, %eax
	jne	.LBB1_14
	cmpq	$8, 264(%rsp)
	jne	.LBB1_14
	movq	208(%rsp), %rcx
	movq	240(%rsp), %rbx
	movq	272(%rsp), %rbp
	movabsq	$PyNumber_Long, %rax
	callq	*%rax
	testq	%rax, %rax
	je	.LBB1_18
	movq	%rax, %r15
	movabsq	$PyLong_AsLongLong, %rax
	movq	%r15, %rcx
	callq	*%rax
	movq	%rax, %r14
	movabsq	$Py_DecRef, %rax
	movq	%r15, %rcx
	callq	*%rax
	movabsq	$PyErr_Occurred, %rax
	callq	*%rax
	testq	%rax, %rax
	jne	.LBB1_19
.LBB1_22:
	movabsq	$_ZN3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx, %rax
	leaq	192(%rsp), %rcx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 192(%rsp)
	movq	%r14, 184(%rsp)
	movq	%rbp, 160(%rsp)
	movq	%r13, 104(%rsp)
	movq	%r12, 48(%rsp)
	callq	*%rax
	vmovsd	192(%rsp), %xmm6
	vmovsd	200(%rsp), %xmm7
	movabsq	$NRT_decref, %r14
	movq	%rsi, %rcx
	callq	*%r14
	movq	%rdi, %rcx
	callq	*%r14
	movq	%rbx, %rcx
	callq	*%r14
	movabsq	$PyTuple_New, %rax
	movl	$2, %ecx
	callq	*%rax
	movabsq	$PyFloat_FromDouble, %rdi
	vmovaps	%xmm6, %xmm0
	movq	%rax, %rsi
	callq	*%rdi
	movabsq	$PyTuple_SetItem, %rbx
	movq	%rsi, %rcx
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	*%rbx
	vmovaps	%xmm7, %xmm0
	callq	*%rdi
	movl	$1, %edx
	movq	%rsi, %rcx
	movq	%rax, %r8
	callq	*%rbx
.LBB1_2:
	vmovaps	432(%rsp), %xmm6
	vmovaps	448(%rsp), %xmm7
	movq	%rsi, %rax
	addq	$472, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB1_4:
	movabsq	$PyExc_RuntimeError, %rcx
	movabsq	$".const.missing Environment: _ZN08NumbaEnv3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx", %rdx
	jmp	.LBB1_5
.LBB1_8:
	movabsq	$PyExc_TypeError, %rcx
	movabsq	$".const.can't unbox array from PyObject into native value.  The object maybe of a different type", %rdx
.LBB1_5:
	movabsq	$PyErr_SetString, %rax
	callq	*%rax
	jmp	.LBB1_1
.LBB1_11:
	movabsq	$PyExc_TypeError, %rcx
	movabsq	$".const.can't unbox array from PyObject into native value.  The object maybe of a different type", %rdx
	movabsq	$PyErr_SetString, %rax
	callq	*%rax
	jmp	.LBB1_16
.LBB1_14:
	movabsq	$PyExc_TypeError, %rcx
	movabsq	$".const.can't unbox array from PyObject into native value.  The object maybe of a different type", %rdx
	movabsq	$PyErr_SetString, %rax
	callq	*%rax
	jmp	.LBB1_15
.LBB1_18:
	xorl	%r14d, %r14d
	movabsq	$PyErr_Occurred, %rax
	callq	*%rax
	testq	%rax, %rax
	je	.LBB1_22
.LBB1_19:
	movabsq	$NRT_decref, %rax
	movq	%rbx, %rcx
	callq	*%rax
.LBB1_15:
	movabsq	$NRT_decref, %rax
	movq	%rdi, %rcx
	callq	*%rax
.LBB1_16:
	movabsq	$NRT_decref, %rax
	movq	%rsi, %rcx
	callq	*%rax
.LBB1_1:
	xorl	%esi, %esi
	jmp	.LBB1_2
.Lfunc_end1:
	.size	_ZN7cpython3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx, .Lfunc_end1-_ZN7cpython3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx
	.cfi_endproc

	.globl	cfunc._ZN3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx
	.p2align	4
	.type	cfunc._ZN3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx,@function
cfunc._ZN3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx:
	subq	$216, %rsp
	movq	256(%rsp), %rax
	movq	312(%rsp), %rcx
	movq	368(%rsp), %rdx
	movq	392(%rsp), %r8
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 192(%rsp)
	movq	%rcx, 104(%rsp)
	movq	%rax, 48(%rsp)
	movabsq	$_ZN3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx, %rax
	leaq	192(%rsp), %rcx
	movq	%r8, 184(%rsp)
	movq	%rdx, 160(%rsp)
	callq	*%rax
	vmovsd	192(%rsp), %xmm0
	vmovsd	200(%rsp), %xmm1
	addq	$216, %rsp
	retq
.LBB3_2:
	retq
.LBB3_3:
	movabsq	$NRT_MemInfo_call_dtor, %rax
	#MEMBARRIER
	rex64 jmpq	*%rax
.Lfunc_end3:
	.size	NRT_decref, .Lfunc_end3-NRT_decref
	.cfi_endproc

	.type	.const.match_against_book,@object
	.section	.lrodata,"al",@progbits
	.p2align	4, 0x0
.const.match_against_book:
	.asciz	"match_against_book"
	.size	.const.match_against_book, 19

	.type	_ZN08NumbaEnv3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx,@object
	.comm	_ZN08NumbaEnv3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx,8,8
	.type	".const.missing Environment: _ZN08NumbaEnv3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx",@object
	.p2align	4, 0x0
".const.missing Environment: _ZN08NumbaEnv3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx":
	.asciz	"missing Environment: _ZN08NumbaEnv3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx"
	.size	".const.missing Environment: _ZN08NumbaEnv3src12matcher_core18match_against_bookB2v1B60c8tJTIeFIjxB2IKSgI4CrvQClYb5wBbdC9XqICn1Wk1gKBZBVGsCAA_3d_3dE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx", 235

	.type	".const.can't unbox array from PyObject into native value.  The object maybe of a different type",@object
	.p2align	4, 0x0
".const.can't unbox array from PyObject into native value.  The object maybe of a different type":
	.asciz	"can't unbox array from PyObject into native value.  The object maybe of a different type"
	.size	".const.can't unbox array from PyObject into native value.  The object maybe of a different type", 89

	.section	".note.GNU-stack","",@progbits
