## Question

Stop execution inside add, determine the address of a, and use LLDB to read the memory beginning at that address. Verify that the memory read starts at the same address reported for a.

## Answer

```
  Breakpoint 1: where = debug`add + 10 at debug.c:5:16, address = 0x000000000000114a
  (lldb) run
  Process 25206 launched: '/home/rianbaltazar/C-Training/The_Debugger/debug' (x86_64)
  Process 25206 stopped
  * thread #1, name = 'debug', stop reason = breakpoint 1.1
      frame #0: 0x000055555555514a debug`add(a=2, b=3) at debug.c:5:16
    2
    3    int add(int a, int b)
    4    {
  -> 5      int result = a + b;
    6      return result;
    7    }
    8
  (lldb) memory read &a
  0x7fffffffda4c: 02 00 00 00 70 da ff ff ff 7f 00 00 88 51 55 55  ....p........QUU
  0x7fffffffda5c: 55 55 00 00 00 00 00 00 03 00 00 00 02 00 00 00  UU..............
  (lldb) p &a
  (int *) 0x00007fffffffda4c
```
