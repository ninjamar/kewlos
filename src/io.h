extern int VGA_ADDRESS;

void print_str(int color,const char *string){
  // Adapted from https://wiki.osdev.org/Printing_To_Screen
  
  volatile char *screen = (volatile char*)VGA_ADDRESS;
  while(*string != 0){
    *screen++ = *string++;
    *screen++ = color;
  }
}
