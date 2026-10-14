## Question

Stop execution in main and examine the backtrace. Determine what called main on your system and identify any runtime or library frames that appear before it.

## Answer

```
  Current executable set to '/home/rianbaltazar/C-Training/The_Debugger/debug' (x86_64).
  (lldb) b main
  Breakpoint 1: where = debug`main + 15 at debug.c:11:7, address = 0x000000000000116f
  (lldb) run
  Process 24513 launched: '/home/rianbaltazar/C-Training/The_Debugger/debug' (x86_64)
  Process 24513 stopped
  * thread #1, name = 'debug', stop reason = breakpoint 1.1
      frame #0: 0x000055555555516f debug`main at debug.c:11:7
    8
    9    int main(void)
    10   {
  -> 11     int x = 2;
    12     int y = 3;
    13     int sum = add(x, y);
    14
  (lldb) bt
  * thread #1, name = 'debug', stop reason = breakpoint 1.1
    * frame #0: 0x000055555555516f debug`main at debug.c:11:7
      frame #1: 0x00007ffff7decca8 libc.so.6`___lldb_unnamed_symbol3282 + 120
      frame #2: 0x00007ffff7decd65 libc.so.6`__libc_start_main + 133
      frame #3: 0x0000555555555071 debug`_start + 33
```

Frame #2 called `main` and Frame #3 appeared before it.
