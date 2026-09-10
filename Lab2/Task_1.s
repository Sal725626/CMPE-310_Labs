.section .bss
.global ram
.lcomm ram, 256     # Reserve 256 bytes of RAM ( Unitialized memory)

.section .text
.global fill_ram    # Make function visbile to C program

fill_ram:
    #Store FFh inot RAM locations 50h -58H using direct addressing


    movb $0xFF, ram+0x50
    movb $0xFF, ram+0x51
    movb $0xFF, ram+0x52
    movb $0xFF, ram+0x53
    movb $0xFF, ram+0x54
    movb $0xFF, ram+0x55
    movb $0xFF, ram+0x56
    movb $0xFF, ram+0x57
    movb $0xFF, ram+0x58

    ret     # Return ontrol back to C program

    .section .note.GNU-stackk,"",@progbits
    