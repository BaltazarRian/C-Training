Introduce at least two different syntax errors. Compile the program after each change and read the diagnostic before fixing it.

Syntax Error 1: Removed opening executable bracket

```c
#include <stdio.h>

int main(void)

    printf("Exercise 3\n");
    return 0;
}

```

Syntax Error 1 Output:

```
$ clang Ex_4.c -o Ex_4
Ex_4.c:5:5: error: expected function body after function declarator
    5 |     printf("Exercise 3\n");
      |     ^
Ex_4.c:6:5: error: expected identifier or '('
    6 |     return 0;
      |     ^
Ex_4.c:7:1: error: extraneous closing brace ('}')
    7 | }
      | ^
3 errors generated.
```

Syntax Error 2: Removed semicolon from printf function

```c
#include <stdio.h>

int main(void)
{
    printf("Exercise 3\n")
    return 0;
}

```

Syntax Error 2 Output:

```
$ clang Ex_4.c -o Ex_4
Ex_4.c:5:27: error: expected ';' after expression
    5 |     printf("Exercise 3\n")
      |                           ^
      |                           ;
1 error generated.
```
