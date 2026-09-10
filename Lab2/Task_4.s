.section .bss
.global ram
.lcomm ram, 256     # Reserve 256 bytes of RAM ( Unitialized memory)

.section .text
.global fill_ram    # Make function visbile to C program

fill_ram:
    # calc the series and store final sum into given location

  mov0 $0, %eax     # eax register will hold the sum; starts at = 0
  mov1 $1, %ecx     #ecx will be the counter; starts at = 1

loop:
add1 %ecx, %eax     # sum= sum + counter
add1 %1,    %ecx    # counter = counter + 1

cmpl $10, %ecx      # compare counter to value of 10

jle loop            # Repeat until counter <= 10


movb $al, ram+0x50  #store our sum into given location which is 0x50

 ret     # Return ontrol back to C program

.section .note.GNU-stack,"",@progbits
    