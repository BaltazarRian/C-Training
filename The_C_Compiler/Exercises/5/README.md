Starting again with only the three C source files, manually generate and inspect each intermediate representation in the compilation pipeline before producing the final executable.

## Comamnds

```
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/5
$ clang -E convert.c -o convert.i
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/5
$ clang -E math.c -o math.i
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/5
$ clang -E main.c -o main.i
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/5
$ clang -S convert.c -o convert.s
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/5
$ clang -S math.c -o math.s
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/5
$ clang -S main.c -o main.s
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/5
$ clang -c convert.c -o convert.o
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/5
$ clang -c math.c -o math.o
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/5
$ clang -c main.c -o main.o
```
