Consult the official Clang documentation and determine which command-line option instructs Clang to compile the three-file program using the C99 language standard. Rebuild the program using that option and verify that it still compiles and runs successfully.

## Reference

[Clang Documentation](https://clang.llvm.org/docs/UsersManual.html#differences-between-various-standard-modes) - Differences between various standard modes (Section)

Differences between various standard modes
clang supports the -std option, which changes what language mode clang uses. The supported modes for C are c89, gnu89, iso9899:199409 (for C95), c99, gnu99, c11, gnu11, c17, gnu17, c23, gnu23, c2y, gnu2y, and various aliases for those modes. If no -std option is specified, clang defaults to gnu17 mode. Many C99 and C11 features are supported in earlier modes as a conforming extension, with a warning. Use -pedantic-errors to request an error if a feature from a later standard revision is used in an earlier mode.

## Commands

```
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/7
$ clang -std=c99 main.c math.c convert.c -o executable
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/7
$ ./executable
3
1
```
