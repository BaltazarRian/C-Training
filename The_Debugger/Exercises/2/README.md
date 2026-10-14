## Question

Determine the value of result immediately before and immediately after the assignment in add executes.

## Answer

```
  (lldb) memory read &result
  0x7fffffffda44: 00 00 00 00 03 00 00 00 02 00 00 00 70 da ff ff  ............p...
  0x7fffffffda54: ff 7f 00 00 88 51 55 55 55 55 00 00 00 00 00 00  .....QUUUU......
  (lldb) step
  Process 23517 stopped
  * thread #1, name = 'debug', stop reason = step in
      frame #0: 0x0000555555555153 debug`add(a=2, b=3) at debug.c:6:10
    3    int add(int a, int b)
    4    {
    5      int result = a + b;
  -> 6      return result;
    7    }
    8
    9    int main(void)
  (lldb) memory read &result
  0x7fffffffda44: 05 00 00 00 03 00 00 00 02 00 00 00 70 da ff ff  ............p...
  0x7fffffffda54: ff 7f 00 00 88 51 55 55 55 55 00 00 00 00 00 00  .....QUUUU......
```
