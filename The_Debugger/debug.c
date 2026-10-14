#include <stdio.h>

int add(int a, int b)
{
  int result = a + b;
  return result;
}

int main(void)
{
  int x = 2;
  int y = 3;
  int sum = add(x, y);

  printf("%d\n", sum);

  return 0;
}
