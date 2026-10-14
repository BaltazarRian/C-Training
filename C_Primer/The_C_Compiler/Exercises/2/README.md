Link the three object files into a single executable. Run the executable and verify that it prints the values returned by both functions.

```
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/2
$ clang math.o main.o convert.o -o executable
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/2
$ ./executable
3
1
```
