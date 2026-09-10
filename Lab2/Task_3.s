.section .bss
.global ram
.lcomm ram, 256     # Reserve 256 bytes of RAM ( Unitialized memory)

.section .text
.global fill_ram    # Make function visbile to C program

fill_ram:
    # Store 00h into RAM locations 50h -58H using direct addressing

  #Task 3: Write a program to clear RAM locations starting at RAM address 0x50 to
    # 0x58 (Hint: you can mov 0x00 value)
    #not sure if im supposed to do this indirect or direct but im doing it directly by chaing the DATA values from FF to 00


    movb $0x00, ram+0x50
    movb $0x00, ram+0x51
    movb $0x00, ram+0x52
    movb $0x00, ram+0x53
    movb $0x00, ram+0x54
    movb $0x00, ram+0x55
    movb $0x00, ram+0x56
    movb $0x00, ram+0x57
    movb $0x00, ram+0x58

    ret     # Return ontrol back to C program

    .section .note.GNU-stack,"",@progbits
    