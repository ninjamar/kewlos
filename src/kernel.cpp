/*
kmain is the main part of the operating system
 */
#include "io.h"
int VGA_ADDRESS = 0xB8000;
int BLACK = 0;

extern "C" void kmain(){
  print_str(BLACK,"Hello, World!");
}
