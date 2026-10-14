## Question

Stop execution in main before the call to add. Determine the difference between stepping over the call and stepping into it.

## Answer

Stepping into the call to `main`:

```
  (lldb) step
  Process 24804 stopped
  * thread #1, name = 'debug', stop reason = step in
      frame #0: 0x000055555555517d debug`main at debug.c:13:17
    10   {
    11     int x = 2;
    12     int y = 3;
  -> 13     int sum = add(x, y);
    14
    15     printf("%d\n", sum);
    16
  (lldb) step
  Process 24804 stopped
  * thread #1, name = 'debug', stop reason = step in
      frame #0: 0x000055555555514a debug`add(a=2, b=3) at debug.c:5:16
    2
    3    int add(int a, int b)
    4    {
  -> 5      int result = a + b;
    6      return result;
    7    }
    8
  (lldb) step
  Process 24804 stopped
  * thread #1, name = 'debug', stop reason = step in
      frame #0: 0x0000555555555153 debug`add(a=2, b=3) at debug.c:6:10
    3    int add(int a, int b)
    4    {
    5      int result = a + b;
  -> 6      return result;
    7    }
    8
    9    int main(void)
  (lldb) step
  Process 24804 stopped
  * thread #1, name = 'debug', stop reason = step in
      frame #0: 0x0000555555555188 debug`main at debug.c:13:7
    10   {
    11     int x = 2;
    12     int y = 3;
  -> 13     int sum = add(x, y);
    14
    15     printf("%d\n", sum);
    16
  (lldb) step
  Process 24804 stopped
  * thread #1, name = 'debug', stop reason = step in
      frame #0: 0x000055555555518b debug`main at debug.c:15:18
    12     int y = 3;
    13     int sum = add(x, y);
    14
  -> 15     printf("%d\n", sum);
    16
    17     return 0;
    18   }
```

Stepping over the call to `main`:

```
  Process 25062 launched: '/home/rianbaltazar/C-Training/The_Debugger/debug' (x86_64)
  Process 25062 stopped
  * thread #1, name = 'debug', stop reason = breakpoint 1.1
      frame #0: 0x000055555555516f debug`main at debug.c:11:7
    8
    9    int main(void)
    10   {
  -> 11     int x = 2;
    12     int y = 3;
    13     int sum = add(x, y);
    14
  (lldb) next
  Process 25062 stopped
  * thread #1, name = 'debug', stop reason = step over
      frame #0: 0x0000555555555176 debug`main at debug.c:12:7
    9    int main(void)
    10   {
    11     int x = 2;
  -> 12     int y = 3;
    13     int sum = add(x, y);
    14
    15     printf("%d\n", sum);
  (lldb) next
  Process 25062 stopped
  * thread #1, name = 'debug', stop reason = step over
      frame #0: 0x000055555555517d debug`main at debug.c:13:17
    10   {
    11     int x = 2;
    12     int y = 3;
  -> 13     int sum = add(x, y);
    14
    15     printf("%d\n", sum);
    16
  (lldb) next
  Process 25062 stopped
  * thread #1, name = 'debug', stop reason = step over
      frame #0: 0x000055555555518b debug`main at debug.c:15:18
    12     int y = 3;
    13     int sum = add(x, y);
    14
  -> 15     printf("%d\n", sum);
    16
    17     return 0;
    18   }
```
