#include <stdio.h>

int one_function(int a, int b);
int different_function(int a, int b);

int main(void)
{
  printf("%d\n", one_function(1, 2));
  printf("%d\n", different_function(2, 1));
}

