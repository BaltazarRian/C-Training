Compile each source file independently into an object file. Verify that three separate object files are produced.

```
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/1
$ clang -c convert.c -o convert.o
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/1
$ clang -c math.c -o math.o
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/1
$ clang -c main.c -o main.o
```
