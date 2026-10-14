Change the calculation performed by the function in `math.c`. Recompile only `math.c`, then link the new object file with the existing object files produced from `main.c` and `convert.c`. Run the executable and verify that its output reflects the change.

## `math.c`

```c
int one_function(int a, int b)
{
  return a + b;
}
```

Changed to:

```c
int one_function(int a, int b)
{
  return a * b;
}
```

## Commands

```
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/4
$ clang -c math.c -o math.o
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/4
$ clang math.o main.o convert.o
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/4
$ clang math.o main.o convert.o -o executable2
```

New Output:

```
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/4
$ ./executable2
2
1
```

Old Output:

```
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/4
$ ./executable
3
1
```
