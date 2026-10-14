	.text
	.file	"math.c"
	.globl	one_function                    # -- Begin function one_function
	.p2align	4, 0x90
	.type	one_function,@function
one_function:                           # @one_function
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	one_function, .Lfunc_end0-one_function
	.cfi_endproc
                                        # -- End function
	.ident	"Debian clang version 19.1.7 (3+b1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
