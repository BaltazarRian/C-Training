Use Clang to display the operations it would perform when building all three source files into a single executable. Compare that output with the preprocessing → compilation → assembly → linking model presented in this section.

## Comamnds

```
rianbaltazar@TST-LENPF4F086D:~/C-Training/The_C_Compiler/Exercises/6
$ clang -### main.c -o executable
Debian clang version 19.1.7 (3+b1)
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/lib/llvm-19/bin
 "/usr/lib/llvm-19/bin/clang" "-cc1" "-triple" "x86_64-pc-linux-gnu" "-emit-obj" "-dumpdir" "executable-" "-disable-free" "-clear-ast-before-backend" "-disable-llvm-verifier" "-discard-value-names" "-main-file-name" "main.c" "-mrelocation-model" "pic" "-pic-level" "2" "-pic-is-pie" "-mframe-pointer=all" "-fmath-errno" "-ffp-contract=on" "-fno-rounding-math" "-mconstructor-aliases" "-funwind-tables=2" "-target-cpu" "x86-64" "-tune-cpu" "generic" "-debugger-tuning=gdb" "-fdebug-compilation-dir=/home/rianbaltazar/C-Training/The_C_Compiler/Exercises/6" "-fcoverage-compilation-dir=/home/rianbaltazar/C-Training/The_C_Compiler/Exercises/6" "-resource-dir" "/usr/lib/llvm-19/lib/clang/19" "-internal-isystem" "/usr/lib/llvm-19/lib/clang/19/include" "-internal-isystem" "/usr/local/include" "-internal-isystem" "/usr/lib/gcc/x86_64-linux-gnu/14/../../../../x86_64-linux-gnu/include" "-internal-externc-isystem" "/usr/include/x86_64-linux-gnu" "-internal-externc-isystem" "/include" "-internal-externc-isystem" "/usr/include" "-ferror-limit" "19" "-fgnuc-version=4.2.1" "-fskip-odr-check-in-gmf" "-fcolor-diagnostics" "-faddrsig" "-D__GCC_HAVE_DWARF2_CFI_ASM=1" "-o" "/tmp/main-55f799.o" "-x" "c" "main.c"
 "/usr/bin/ld" "--hash-style=gnu" "--build-id" "--eh-frame-hdr" "-m" "elf_x86_64" "-pie" "-dynamic-linker" "/lib64/ld-linux-x86-64.so.2" "-o" "executable" "/lib/x86_64-linux-gnu/Scrt1.o" "/lib/x86_64-linux-gnu/crti.o" "/usr/lib/gcc/x86_64-linux-gnu/14/crtbeginS.o" "-L/usr/lib/gcc/x86_64-linux-gnu/14" "-L/usr/lib/gcc/x86_64-linux-gnu/14/../../../../lib64" "-L/lib/x86_64-linux-gnu" "-L/lib/../lib64" "-L/usr/lib/x86_64-linux-gnu" "-L/usr/lib/../lib64" "-L/lib" "-L/usr/lib" "/tmp/main-55f799.o" "-lgcc" "--as-needed" "-lgcc_s" "--no-as-needed" "-lc" "-lgcc" "--as-needed" "-lgcc_s" "--no-as-needed" "/usr/lib/gcc/x86_64-linux-gnu/14/crtendS.o" "/lib/x86_64-linux-gnu/crtn.o"
```
