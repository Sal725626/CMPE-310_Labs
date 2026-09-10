.section .bss
.global ram
.lcomm ram, 256     # Reserve 256 bytes of RAM ( Unitialized memory)

.section .text
.global fill_ram    # Make function visbile to C program

fill_ram:
    #Store FFh inot RAM locations 50h -58H using indirect addressing
    # its like look inside a given register to find adress and put data or command into that adress which has the location
    # while direct is more like put this data directily into the memory location/ adress given directly

    # need to use a %rax type register since we want 64 bits for the adress/pointer

    leaq ram+0x50(%rip), %rax 
    # put the adress of ram+0x50 into %rax 
    # rip is instrcution pointer register in 64 points; basically where am in the program thats being executed
    movb $0xFF, (%rax)
    addq $1, %rax
    # move FF into the adress found in register, () this is the command around register telling us that 
    # this points to the next adress stored in the register by 1 since we already used ram+0x50 location so now register would carry the address fr ram+0x50
    # we repeat this however many time now i guess, still not sure why not use an array maybe not a thing here or advanced

    movb $0xFF, (%rax)
    addq $1, %rax

    movb $0xFF, (%rax)
    addq $1, %rax

    movb $0xFF, (%rax)
    addq $1, %rax

    movb $0xFF, (%rax)
    addq $1, %rax
    
    movb $0xFF, (%rax)
    addq $1, %rax

    movb $0xFF, (%rax)
    addq $1, %rax

    movb $0xFF, (%rax)
    addq $1, %rax

    movb $0xFF, (%rax)
    # no need for addq 1 since we are done and wanan stop at this location

    ret     # Return ontrol back to C program

    .section .note.GNU-stack,"",@progbits
    