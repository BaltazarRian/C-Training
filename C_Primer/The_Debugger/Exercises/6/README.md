## Question

Exit LLDB and repeat the inspection of add using the nodebug executable created earlier. Determine what information LLDB can still provide and what source-level information is no longer available.

## Answer

```
  $ lldb ./nodebug
  (lldb) target create "./nodebug"
  Current executable set to '/home/rianbaltazar/C-Training/The_Debugger/nodebug' (x86_64).
  (lldb) b add
  Breakpoint 1: where = nodebug`add, address = 0x0000000000001140
  (lldb) run
  Process 25532 launched: '/home/rianbaltazar/C-Training/The_Debugger/nodebug' (x86_64)
  Process 25532 stopped
  * thread #1, name = 'nodebug', stop reason = breakpoint 1.1
      frame #0: 0x0000555555555140 nodebug`add
  nodebug`add:
  ->  0x555555555140 <+0>: pushq  %rbp
      0x555555555141 <+1>: movq   %rsp, %rbp
      0x555555555144 <+4>: movl   %edi, -0x4(%rbp)
      0x555555555147 <+7>: movl   %esi, -0x8(%rbp)
  (lldb) bt
  * thread #1, name = 'nodebug', stop reason = breakpoint 1.1
    * frame #0: 0x0000555555555140 nodebug`add
      frame #1: 0x0000555555555188 nodebug`main + 40
      frame #2: 0x00007ffff7decca8 libc.so.6`___lldb_unnamed_symbol3282 + 120
      frame #3: 0x00007ffff7decd65 libc.so.6`__libc_start_main + 133
      frame #4: 0x0000555555555071 nodebug`_start + 33
```

It seems that only `frames` and `backtrace` are provided when debugging with `lldb` on the `nodebug` executable.
