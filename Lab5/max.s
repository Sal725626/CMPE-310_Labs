.section .data

Numbers:
    .long 1
    .long 15
    .long 4
    .long 2
    .long 7
    .long 9
    .long 23
    .long 7
    .long 3
    .long 11

Array_length:
    .long 10

.section .text
.global main

main:
    movl $0, %ecx                  # index = 0
    movl Numbers(,%rcx,4), %eax   # max = Numbers[0]

    addl $1, %ecx                  # index = 1

loop:
    cmpl Array_length, %ecx        # index compared to length n then
    jge done                       # if index >= length, stop

    movl Numbers(,%rcx,4), %edx   # current = Numbers[index]

    cmpl %eax, %edx                # compare current with max
    jle skip                       # if current <= max, dont changee

    movl %edx, %eax                # max = current

skip:
    addl $1, %ecx                  # index++
    jmp loop

done:
    ret

.section .note.GNU-stack,"",@progbits

