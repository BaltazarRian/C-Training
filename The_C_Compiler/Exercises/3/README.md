Generate the assembly source for each of the three C source files. Locate the functions defined in `math.c` and `convert.c` within their corresponding assembly files.

## `math.c`

```assembly
one_function:                           # @one_function
 .cfi_startproc
# %bb.0:
 pushq %rbp
 .cfi_def_cfa_offset 16
 .cfi_offset %rbp, -16
 movq %rsp, %rbp
 .cfi_def_cfa_register %rbp
 movl %edi, -4(%rbp)
 movl %esi, -8(%rbp)
 movl -4(%rbp), %eax
 addl -8(%rbp), %eax
 popq %rbp
 .cfi_def_cfa %rsp, 8
 retq
.Lfunc_end0:
 .size one_function, .Lfunc_end0-one_function
 .cfi_endproc
                                        # -- End function
 .ident "Debian clang version 19.1.7 (3+b1)"
 .section ".note.GNU-stack","",@progbits
 .addrsig
```

## `convert.c`

```assembly
different_function:                     # @different_function
 .cfi_startproc
# %bb.0:
 pushq %rbp
 .cfi_def_cfa_offset 16
 .cfi_offset %rbp, -16
 movq %rsp, %rbp
 .cfi_def_cfa_register %rbp
 movl %edi, -4(%rbp)
 movl %esi, -8(%rbp)
 movl -4(%rbp), %eax
 subl -8(%rbp), %eax
 popq %rbp
 .cfi_def_cfa %rsp, 8
 retq
.Lfunc_end0:
 .size different_function, .Lfunc_end0-different_function
 .cfi_endproc
                                        # -- End function
 .ident "Debian clang version 19.1.7 (3+b1)"
 .section ".note.GNU-stack","",@progbits
 .addrsig
```
