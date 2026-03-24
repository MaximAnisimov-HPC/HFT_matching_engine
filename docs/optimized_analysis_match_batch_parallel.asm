--- HARDWARE SATURATION AUDIT: match_batch_parallel ---
SIMD (zmm/ymm): 18
Jumps (Tact Loss): 74
Vector Ops (v-prefix): 61
Total Lines: 880

--- PRODUCTION-READY LOOP ASM ---
.LBB0_10:
	vmovaps	304(%rsp), %xmm6
	vmovaps	320(%rsp), %xmm7
	addq	$344, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB0_1:
	movabsq	$.const.picklebuf.2204146593856, %rax
	jmp	.LBB0_6
.LBB0_3:
	movabsq	$.const.picklebuf.2204146593920, %rax
	jmp	.LBB0_6
.LBB0_5:
	movabsq	$.const.picklebuf.2204146594944, %rax
	jmp	.LBB0_6
.LBB0_7:
	movabsq	$printf_format, %rcx
	movabsq	$printf, %rax
	movq	%rsi, %rdx
	callq	*%rax
	movabsq	$.const.picklebuf.2204146592384, %rax
.LBB0_6:
	movq	%rax, (%r12)
	movl	$1, %eax
	jmp	.LBB0_10
.Lfunc_end0:
	.size	_ZN3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx, .Lfunc_end0-_ZN3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx
	.cfi_endproc

	.globl	_ZN7cpython3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx
	.p2align	4
	.type	_ZN7cpython3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx,@function
_ZN7cpython3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx:
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
	subq	$616, %rsp
	.cfi_def_cfa_offset 688
	.cfi_offset %rbx, -72
	.cfi_offset %rbp, -64
	.cfi_offset %rdi, -56
	.cfi_offset %rsi, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rcx
	leaq	272(%rsp), %r8
	leaq	280(%rsp), %rdx
	leaq	264(%rsp), %rax
	movl	$5, %r9d
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	leaq	288(%rsp), %r8
	leaq	296(%rsp), %rdx
	movq	%rax, 64(%rsp)
	movabsq	$PyArg_UnpackTuple, %rax
	movq	%r8, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movabsq	$.const.match_batch_parallel, %rdx
	movl	$5, %r8d
	callq	*%rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 304(%rsp)
	vmovups	%ymm0, 368(%rsp)
	vmovups	%ymm0, 328(%rsp)
	movq	$0, 240(%rsp)
	vmovups	%ymm0, 392(%rsp)
	testl	%eax, %eax
	je	.LBB1_1
	movabsq	$_ZN08NumbaEnv3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx, %rax
	movq	(%rax), %r13
	testq	%r13, %r13
	je	.LBB1_4
	movq	296(%rsp), %rcx
	movabsq	$PyNumber_Long, %r12
	vzeroupper
	callq	*%r12
	movabsq	$PyLong_AsLongLong, %r15
	movabsq	$Py_DecRef, %rdi
	testq	%rax, %rax
	je	.LBB1_7
	movq	%rax, %rcx
	movq	%rax, %rsi
	callq	*%r15
	movq	%rsi, %rcx
	movq	%rax, %rbp
	callq	*%rdi
	movabsq	$PyErr_Occurred, %rax
	callq	*%rax
	testq	%rax, %rax
	jne	.LBB1_1
.LBB1_10:
	movq	288(%rsp), %rcx
	movabsq	$NRT_adapt_ndarray_from_python, %r14
	leaq	560(%rsp), %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 560(%rsp)
	vmovups	%ymm0, 584(%rsp)
	vzeroupper
	callq	*%r14
	testl	%eax, %eax
	jne	.LBB1_12
	cmpq	$8, 584(%rsp)
	jne	.LBB1_12
	movq	280(%rsp), %rcx
	movq	560(%rsp), %rsi
	movq	592(%rsp), %rdi
	leaq	496(%rsp), %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 496(%rsp)
	vmovups	%ymm0, 520(%rsp)
	vzeroupper
	callq	*%r14
	testl	%eax, %eax
	jne	.LBB1_15
	cmpq	$8, 520(%rsp)
	jne	.LBB1_15
	movq	528(%rsp), %rax
	movq	536(%rsp), %rcx
	movq	496(%rsp), %rbx
	leaq	432(%rsp), %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 432(%rsp)
	vmovups	%ymm0, 456(%rsp)
	movq	%rax, 232(%rsp)
	movq	%rcx, 224(%rsp)
	movq	544(%rsp), %rax
	movq	272(%rsp), %rcx
	movq	%rax, 216(%rsp)
	vzeroupper
	callq	*%r14
	testl	%eax, %eax
	jne	.LBB1_20
	cmpq	$8, 456(%rsp)
	jne	.LBB1_20
	movq	264(%rsp), %rcx
	movq	%rdi, %r14
	movq	%rbp, 208(%rsp)
	movq	%rsi, 200(%rsp)
	movq	%r13, 256(%rsp)
	movq	432(%rsp), %rdi
	movq	464(%rsp), %r13
	movq	472(%rsp), %rsi
	movq	480(%rsp), %rbp
	callq	*%r12
	testq	%rax, %rax
	je	.LBB1_22
	movq	%rax, %rcx
	movq	%rax, %r12
	callq	*%r15
	movq	%r12, %rcx
	movabsq	$Py_DecRef, %r12
	movq	%rax, %r15
	callq	*%r12
	movabsq	$PyErr_Occurred, %rax
	callq	*%rax
	testq	%rax, %rax
	jne	.LBB1_23
.LBB1_27:
	movq	216(%rsp), %rax
	movq	224(%rsp), %rdx
	movq	232(%rsp), %rcx
	movq	208(%rsp), %r8
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 328(%rsp)
	movq	%rsi, 176(%rsp)
	vmovups	%ymm0, 304(%rsp)
	movq	%r15, 192(%rsp)
	movq	%rbp, 184(%rsp)
	movq	%r13, 168(%rsp)
	movq	%rdi, 136(%rsp)
	movq	%rbx, %rsi
	movq	%rbx, 80(%rsp)
	movq	%r14, 56(%rsp)
	movq	%rax, 128(%rsp)
	movq	%rdx, 120(%rsp)
	movq	%rcx, 112(%rsp)
	movabsq	$_ZN3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx, %rax
	leaq	304(%rsp), %rcx
	leaq	240(%rsp), %rdx
	vzeroupper
	callq	*%rax
	movq	312(%rsp), %rcx
	movq	304(%rsp), %rdx
	movq	240(%rsp), %r15
	movq	336(%rsp), %r14
	movq	344(%rsp), %r13
	movq	352(%rsp), %rbx
	movabsq	$NRT_decref, %rbp
	movl	%eax, %r12d
	movq	%rcx, 224(%rsp)
	movq	328(%rsp), %rcx
	movq	%rdx, 208(%rsp)
	movq	320(%rsp), %rdx
	movq	%rcx, 232(%rsp)
	movq	200(%rsp), %rcx
	movq	%rdx, 216(%rsp)
	callq	*%rbp
	movq	%rsi, %rcx
	callq	*%rbp
	movq	%rdi, %rcx
	callq	*%rbp
	testl	%r12d, %r12d
	je	.LBB1_28
	movabsq	$PyErr_Clear, %rax
	callq	*%rax
	movl	8(%r15), %edx
	movq	(%r15), %rcx
	cmpl	$0, 32(%r15)
	jle	.LBB1_35
	movslq	%edx, %rdx
	movabsq	$PyBytes_FromStringAndSize, %rax
	callq	*%rax
	movq	16(%r15), %rcx
	movq	%rax, %rsi
	callq	*24(%r15)
	testq	%rax, %rax
	je	.LBB1_34
	movabsq	$numba_runtime_build_excinfo_struct, %r8
	movq	%rsi, %rcx
	movq	%rax, %rdx
	callq	*%r8
	movabsq	$NRT_Free, %rdi
	movq	%r15, %rcx
	movq	%rax, %rsi
	callq	*%rdi
	testq	%rsi, %rsi
	jne	.LBB1_37
	jmp	.LBB1_1
.LBB1_28:
	movq	256(%rsp), %rax
	movq	%rbx, 248(%rsp)
	movq	%r14, %r12
	movq	208(%rsp), %r15
	movq	224(%rsp), %rdi
	movq	216(%rsp), %rbx
	movq	232(%rsp), %r14
	movq	%r13, 200(%rsp)
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB1_30
	movabsq	$PyList_GetItem, %rax
	xorl	%edx, %edx
	callq	*%rax
	movq	%rax, %rsi
	jmp	.LBB1_31
.LBB1_35:
	movq	16(%r15), %r8
	movabsq	$numba_unpickle, %rax
	callq	*%rax
	movq	%rax, %rsi
	testq	%rsi, %rsi
	je	.LBB1_1
.LBB1_37:
	movabsq	$numba_do_raise, %rax
.LBB1_17:
	movq	%rsi, %rcx
	callq	*%rax
.LBB1_1:
	xorl	%eax, %eax
	jmp	.LBB1_2
.LBB1_30:
	movabsq	$PyExc_RuntimeError, %rcx
	movabsq	$".const.`env.consts` is NULL in `read_const`", %rdx
	movabsq	$PyErr_SetString, %rax
	callq	*%rax
	xorl	%esi, %esi
.LBB1_31:
	movq	200(%rsp), %r13
	movabsq	$.const.pickledata.140736282440992, %rcx
	movabsq	$.const.pickledata.140736282440992.sha1, %r8
	movabsq	$numba_unpickle, %rax
	movl	$32, %edx
	callq	*%rax
	movq	248(%rsp), %rcx
	movq	%r15, 368(%rsp)
	movq	%rdi, 376(%rsp)
	movq	%rbx, 384(%rsp)
	movq	%r14, 392(%rsp)
	movq	%r12, 400(%rsp)
	movq	%r13, 408(%rsp)
	movabsq	$NRT_adapt_ndarray_to_python_acqref, %r10
	movl	$1, %r8d
	movl	$1, %r9d
	movq	%rsi, 32(%rsp)
	movq	%rax, %rdx
	movq	%rcx, 416(%rsp)
	leaq	368(%rsp), %rcx
	callq	*%r10
	movq	%r15, %rcx
	movq	%rax, %rsi
	callq	*%rbp
	movq	%rsi, %rax
.LBB1_2:
	addq	$616, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	vzeroupper
	retq
.LBB1_4:
	movabsq	$PyExc_RuntimeError, %rcx
	movabsq	$".const.missing Environment: _ZN08NumbaEnv3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx", %rdx
	jmp	.LBB1_5
.LBB1_7:
	xorl	%ebp, %ebp
	movabsq	$PyErr_Occurred, %rax
	callq	*%rax
	testq	%rax, %rax
	je	.LBB1_10
	jmp	.LBB1_1
.LBB1_12:
	movabsq	$PyExc_TypeError, %rcx
	movabsq	$".const.can't unbox array from PyObject into native value.  The object maybe of a different type", %rdx
	jmp	.LBB1_5
.LBB1_15:
	movabsq	$PyExc_TypeError, %rcx
	movabsq	$".const.can't unbox array from PyObject into native value.  The object maybe of a different type", %rdx
	movabsq	$PyErr_SetString, %rax
	callq	*%rax
	jmp	.LBB1_16
.LBB1_20:
	movabsq	$PyExc_TypeError, %rcx
	movabsq	$".const.can't unbox array from PyObject into native value.  The object maybe of a different type", %rdx
	movabsq	$PyErr_SetString, %rax
	callq	*%rax
	jmp	.LBB1_24
.LBB1_22:
	xorl	%r15d, %r15d
	movabsq	$PyErr_Occurred, %rax
	callq	*%rax
	testq	%rax, %rax
	je	.LBB1_27
.LBB1_23:
	movabsq	$NRT_decref, %rax
	movq	%rdi, %rcx
	callq	*%rax
	movq	200(%rsp), %rsi
.LBB1_24:
	movabsq	$NRT_decref, %rax
	movq	%rbx, %rcx
	callq	*%rax
.LBB1_16:
	movabsq	$NRT_decref, %rax
	jmp	.LBB1_17
.LBB1_34:
	movabsq	$PyExc_RuntimeError, %rcx
	movabsq	$".const.Error creating Python tuple from runtime exception arguments", %rdx
.LBB1_5:
	movabsq	$PyErr_SetString, %rax
	vzeroupper
	callq	*%rax
	jmp	.LBB1_1
.Lfunc_end1:
	.size	_ZN7cpython3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx, .Lfunc_end1-_ZN7cpython3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx
	.cfi_endproc

	.globl	cfunc._ZN3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx
	.p2align	4
	.type	cfunc._ZN3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx,@function
cfunc._ZN3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx:
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
	subq	$296, %rsp
	.cfi_def_cfa_offset 368
	.cfi_offset %rbx, -72
	.cfi_offset %rbp, -64
	.cfi_offset %rdi, -56
	.cfi_offset %rsi, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	vmovups	472(%rsp), %ymm0
	vmovups	528(%rsp), %ymm1
	movq	%rcx, %rsi
	movq	416(%rsp), %rax
	movq	440(%rsp), %rcx
	movq	%rdx, %r8
	vxorps	%xmm2, %xmm2, %xmm2
	vmovups	%ymm2, 264(%rsp)
	vmovups	%ymm2, 240(%rsp)
	movq	$0, 216(%rsp)
	leaq	216(%rsp), %rdx
	vmovups	%ymm1, 168(%rsp)
	vmovups	%ymm0, 112(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rax, 56(%rsp)
	movabsq	$_ZN3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx, %rax
	leaq	240(%rsp), %rcx
	vzeroupper
	callq	*%rax
	movq	216(%rsp), %rdi
	movq	240(%rsp), %rcx
	movq	248(%rsp), %rdx
	movq	256(%rsp), %r12
	movq	264(%rsp), %r13
	movq	272(%rsp), %rbp
	movq	280(%rsp), %r14
	movq	288(%rsp), %r15
	movl	$0, 212(%rsp)
	testl	%eax, %eax
	je	.LBB2_5
	movq	%rcx, 232(%rsp)
	movabsq	$numba_gil_ensure, %rax
	leaq	212(%rsp), %rcx
	movq	%rdx, 224(%rsp)
	callq	*%rax
	movabsq	$PyErr_Clear, %rax
	callq	*%rax
	movl	8(%rdi), %edx
	movq	(%rdi), %rcx
	cmpl	$0, 32(%rdi)
	jle	.LBB2_6
	movslq	%edx, %rdx
	movabsq	$PyBytes_FromStringAndSize, %rax
	callq	*%rax
	movq	16(%rdi), %rcx
	movq	%rax, %rbx
	callq	*24(%rdi)
	testq	%rax, %rax
	je	.LBB2_3
	movabsq	$numba_runtime_build_excinfo_struct, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	callq	*%r8
	movq	%rax, %rbx
	movabsq	$NRT_Free, %rax
	movq	%rdi, %rcx
	callq	*%rax
	testq	%rbx, %rbx
	je	.LBB2_4
.LBB2_8:
	movabsq	$numba_do_raise, %rax
	movq	%rbx, %rcx
	callq	*%rax
.LBB2_4:
	movabsq	$".const.<numba.core.cpu.CPUContext object at 0x00000201316336F0>", %rcx
	movabsq	$PyUnicode_FromString, %rax
	callq	*%rax
	movabsq	$PyErr_WriteUnraisable, %rbx
	movq	%rax, %rdi
	movq	%rdi, %rcx
	callq	*%rbx
	movabsq	$Py_DecRef, %rax
	movq	%rdi, %rcx
	callq	*%rax
	movabsq	$numba_gil_release, %rax
	leaq	212(%rsp), %rcx
	callq	*%rax
	movq	232(%rsp), %rcx
	movq	224(%rsp), %rdx
.LBB2_5:
	movq	%rcx, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%r13, 24(%rsi)
	movq	%rbp, 32(%rsi)
	movq	%r14, 40(%rsi)
	movq	%r15, 48(%rsi)
	movq	%rsi, %rax
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB2_6:
	movq	16(%rdi), %r8
	movabsq	$numba_unpickle, %rax
	callq	*%rax
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB2_8
	jmp	.LBB2_4
.LBB2_3:
	movabsq	$PyExc_RuntimeError, %rcx
	movabsq	$".const.Error creating Python tuple from runtime exception arguments.1", %rdx
	movabsq	$PyErr_SetString, %rax
	callq	*%rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB2_5
.Lfunc_end2:
	.size	cfunc._ZN3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx, .Lfunc_end2-cfunc._ZN3src21matcher_core_parallel20match_batch_parallelB2v1B110c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYw86ABbYse0tXqICn1WqDBwFiD2AEAEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEx
	.cfi_endproc

	.weak	__gufunc__._ZN13_3cdynamic_3e35__numba_parfor_gufunc_0x20131606510B2v5B128c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYwaUTI24JtBVoBDXtb9MCvVgdJqdcC7YLGAMy5RRDjNAE_3dE5ArrayIyLi1E1C7mutable7alignedEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEdd5ArrayIdLi1E1C7mutable7alignedE
	.p2align	4
	.type	__gufunc__._ZN13_3cdynamic_3e35__numba_parfor_gufunc_0x20131606510B2v5B128c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYwaUTI24JtBVoBDXtb9MCvVgdJqdcC7YLGAMy5RRDjNAE_3dE5ArrayIyLi1E1C7mutable7alignedEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEdd5ArrayIdLi1E1C7mutable7alignedE,@function
__gufunc__._ZN13_3cdynamic_3e35__numba_parfor_gufunc_0x20131606510B2v5B128c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYwaUTI24JtBVoBDXtb9MCvVgdJqdcC7YLGAMy5RRDjNAE_3dE5ArrayIyLi1E1C7mutable7alignedEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEdd5ArrayIdLi1E1C7mutable7alignedE:
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
	subq	$152, %rsp
	vmovapd	%xmm6, 128(%rsp)
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -72
	.cfi_offset %rbp, -64
	.cfi_offset %rdi, -56
	.cfi_offset %rsi, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	.cfi_offset %xmm6, -96
	movq	(%rdx), %rbx
	testq	%rbx, %rbx
	jle	.LBB3_12
	movq	(%r8), %rax
	movq	8(%r8), %r9
	movq	8(%rcx), %rdx
	movq	16(%r8), %rsi
	movq	24(%r8), %rdi
	movq	48(%r8), %r11
	movq	(%rcx), %r14
	movq	%rax, 112(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rdx, 96(%rsp)
	movq	32(%rcx), %r9
	movq	32(%r8), %rdx
	movq	%r9, 72(%rsp)
	movq	%rdx, 48(%rsp)
	movq	40(%rcx), %r9
	movq	40(%r8), %rdx
	movq	48(%rcx), %r8
	movq	%r9, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	24(%rcx), %rdx
	movq	16(%rcx), %rcx
	movabsq	$9223372036854775806, %r9
	movq	%r8, 88(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	cmpq	$1, %rbx
	jne	.LBB3_14
	xorl	%ebx, %ebx
	jmp	.LBB3_4
.LBB3_14:
	movq	%r11, 80(%rsp)
	movq	%rbx, 120(%rsp)
	andq	%r9, %rbx
	vxorpd	%xmm6, %xmm6, %xmm6
	xorl	%ebp, %ebp
	jmp	.LBB3_15
	.p2align	4
.LBB3_31:
	leaq	(%rdx,%rax,8), %rcx
	shlq	$3, %r8
	movabsq	$memset, %rax
	xorl	%edx, %edx
	callq	*%rax
.LBB3_32:
	addq	$2, %rbp
	movq	%r12, %r9
	cmpq	%rbx, %rbp
	je	.LBB3_3
.LBB3_15:
	movq	%rbp, %rax
	imulq	112(%rsp), %rax
	movl	$0, %r8d
	movq	%r9, %r12
	movq	(%rax,%r14), %r13
	movq	8(%rax,%r14), %rax
	subq	%r13, %rax
	leaq	1(%rax), %rcx
	cmpq	%r9, %rax
	cmovbeq	%rcx, %r8
	testq	%r8, %r8
	jle	.LBB3_23
	movq	%rbp, %rax
	imulq	104(%rsp), %rax
	movq	96(%rsp), %rdx
	movq	(%rdx,%rax), %r9
	movq	%rbp, %rdx
	imulq	80(%rsp), %rdx
	addq	88(%rsp), %rdx
	testq	%r9, %r9
	jle	.LBB3_33
	movq	%rbp, %rax
	imulq	48(%rsp), %rax
	movq	72(%rsp), %r11
	movq	%rbp, %r8
	imulq	%rsi, %r8
	movq	%rbp, %r10
	imulq	%rdi, %r10
	addq	32(%rsp), %r8
	addq	40(%rsp), %r10
	vmovsd	(%r11,%rax), %xmm0
	movq	%rbp, %rax
	imulq	56(%rsp), %rax
	movq	64(%rsp), %r11
	vmovsd	(%r11,%rax), %xmm1
	jmp	.LBB3_18
	.p2align	4
.LBB3_22:
	vmovsd	%xmm2, (%rdx,%rax,8)
	cmpq	$1, %r11
	jle	.LBB3_23
.LBB3_18:
	movq	%r13, %rax
	movq	%rcx, %r11
	decq	%rcx
	incq	%r13
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovapd	%xmm1, %xmm3
	xorl	%r15d, %r15d
	.p2align	4
.LBB3_19:
	vucomisd	%xmm6, %xmm3
	jbe	.LBB3_22
	vucomisd	(%r8,%r15,8), %xmm0
	jb	.LBB3_22
	vminsd	(%r10,%r15,8), %xmm3, %xmm4
	incq	%r15
	vsubsd	%xmm4, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm4, %xmm2
	cmpq	%r15, %r9
	jne	.LBB3_19
	jmp	.LBB3_22
	.p2align	4
.LBB3_33:
	leaq	(%rdx,%r13,8), %rcx
	shlq	$3, %r8
	movabsq	$memset, %rax
	xorl	%edx, %edx
	callq	*%rax
.LBB3_23:
	movq	%rbp, %r11
	orq	$1, %r11
	movl	$0, %r8d
	movq	%r11, %rcx
	imulq	112(%rsp), %rcx
	movq	(%rcx,%r14), %rax
	movq	8(%rcx,%r14), %rdx
	subq	%rax, %rdx
	leaq	1(%rdx), %rcx
	cmpq	%r12, %rdx
	cmovbeq	%rcx, %r8
	testq	%r8, %r8
	jle	.LBB3_32
	movq	%r11, %rdx
	imulq	104(%rsp), %rdx
	movq	96(%rsp), %r9
	movq	(%r9,%rdx), %r9
	movq	%r11, %rdx
	imulq	80(%rsp), %rdx
	addq	88(%rsp), %rdx
	testq	%r9, %r9
	jle	.LBB3_31
	movq	%r11, %r15
	imulq	48(%rsp), %r15
	movq	72(%rsp), %r13
	movq	%r11, %r8
	movq	%r11, %r10
	imulq	56(%rsp), %r11
	imulq	%rsi, %r8
	imulq	%rdi, %r10
	addq	32(%rsp), %r8
	addq	40(%rsp), %r10
	vmovsd	(%r13,%r15), %xmm0
	movq	64(%rsp), %r13
	vmovsd	(%r13,%r11), %xmm1
	jmp	.LBB3_26
	.p2align	4
.LBB3_30:
	vmovsd	%xmm2, (%rdx,%r13,8)
	cmpq	$1, %r11
	jle	.LBB3_32
.LBB3_26:
	movq	%rax, %r13
	movq	%rcx, %r11
	decq	%rcx
	incq	%rax
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovapd	%xmm1, %xmm3
	xorl	%r15d, %r15d
	.p2align	4
.LBB3_27:
	vucomisd	%xmm6, %xmm3
	jbe	.LBB3_30
	vucomisd	(%r8,%r15,8), %xmm0
	jb	.LBB3_30
	vminsd	(%r10,%r15,8), %xmm3, %xmm4
	incq	%r15
	vsubsd	%xmm4, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm4, %xmm2
	cmpq	%r15, %r9
	jne	.LBB3_27
	jmp	.LBB3_30
.LBB3_3:
	testb	$1, 120(%rsp)
	movq	80(%rsp), %r11
	je	.LBB3_12
.LBB3_4:
	movq	112(%rsp), %rcx
	xorl	%r8d, %r8d
	imulq	%rbx, %rcx
	movq	(%rcx,%r14), %rax
	movq	8(%rcx,%r14), %rdx
	subq	%rax, %rdx
	leaq	1(%rdx), %rcx
	cmpq	%r9, %rdx
	cmovbeq	%rcx, %r8
	testq	%r8, %r8
	jle	.LBB3_12
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r9
	imulq	%rbx, %r11
	addq	88(%rsp), %r11
	imulq	%rbx, %rdx
	movq	(%r9,%rdx), %rdx
	testq	%rdx, %rdx
	jle	.LBB3_13
	movq	48(%rsp), %r9
	movq	72(%rsp), %r8
	imulq	%rbx, %rsi
	imulq	%rbx, %rdi
	addq	32(%rsp), %rsi
	addq	40(%rsp), %rdi
	vxorpd	%xmm2, %xmm2, %xmm2
	imulq	%rbx, %r9
	vmovsd	(%r8,%r9), %xmm0
	movq	56(%rsp), %r9
	movq	64(%rsp), %r8
	imulq	%rbx, %r9
	vmovsd	(%r8,%r9), %xmm1
	jmp	.LBB3_7
	.p2align	4
.LBB3_11:
	vmovsd	%xmm3, (%r11,%r9,8)
	cmpq	$1, %r8
	jle	.LBB3_12
.LBB3_7:
	movq	%rax, %r9
	movq	%rcx, %r8
	decq	%rcx
	incq	%rax
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovapd	%xmm1, %xmm4
	xorl	%r10d, %r10d
	.p2align	4
.LBB3_8:
	vucomisd	%xmm2, %xmm4
	jbe	.LBB3_11
	vucomisd	(%rsi,%r10,8), %xmm0
	jb	.LBB3_11
	vminsd	(%rdi,%r10,8), %xmm4, %xmm5
	incq	%r10
	vsubsd	%xmm5, %xmm4, %xmm4
	vaddsd	%xmm3, %xmm5, %xmm3
	cmpq	%r10, %rdx
	jne	.LBB3_8
	jmp	.LBB3_11
.LBB3_12:
	vmovaps	128(%rsp), %xmm6
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB3_13:
	vmovaps	128(%rsp), %xmm6
	leaq	(%r11,%rax,8), %rcx
	shlq	$3, %r8
	movabsq	$memset, %rax
	xorl	%edx, %edx
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	rex64 jmpq	*%rax
.Lfunc_end3:
	.size	__gufunc__._ZN13_3cdynamic_3e35__numba_parfor_gufunc_0x20131606510B2v5B128c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYwaUTI24JtBVoBDXtb9MCvVgdJqdcC7YLGAMy5RRDjNAE_3dE5ArrayIyLi1E1C7mutable7alignedEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEdd5ArrayIdLi1E1C7mutable7alignedE, .Lfunc_end3-__gufunc__._ZN13_3cdynamic_3e35__numba_parfor_gufunc_0x20131606510B2v5B128c8tJTC_2fWQAliW1xhDEoY6EEMEUOEMISPGsAQMVj4QniQ4IXKQEMXwoMGLoQDDVsQR1NHAS2hQ9XgStYwaUTI24JtBVoBDXtb9MCvVgdJqdcC7YLGAMy5RRDjNAE_3dE5ArrayIyLi1E1C7mutable7alignedEx5ArrayIdLi1E1C7mutable7alignedE5ArrayIdLi1E1C7mutable7alignedEdd5ArrayIdLi1E1C7mutable7alignedE
	.cfi_endproc

	.weak	NRT_decref
	.p2align	4
	.type	NRT_decref,@function
NRT_decref:
	.cfi_startproc
	testq	%rcx, %rcx
	je	.LBB4_2
	#MEMBARRIER
	lock		decq	(%rcx)
	je	.LBB4_3
.LBB4_2:
	retq
.LBB4_3:
	movabsq	$NRT_MemInfo_call_dtor, %rax
	#MEMBARRIER
	rex64 jmpq	*%rax
.Lfunc_end4:
	.size	NRT_decref, .Lfunc_end4-NRT_decref
	.cfi_endproc

	.weak	NRT_incref
	.p2align	4
	.type	NRT_incref,@function
NRT_incref:
	testq	%rcx, %rcx
	je	.LBB5_2
	lock		incq	(%rcx)
.LBB5_2:
	retq
