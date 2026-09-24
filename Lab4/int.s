.section .text
.gloabl sum_nums:
.global fill_mem    # Make function visbile to C program



fill_mem:
# %rdi means is where is my array
# % rsi means how many elements


sum_nums:
# calc the series and store final sum into given location
# sum and return then in %eax
movl $0, %eax     # eax register will hold the sum; starts at = 0
movl $0, %ecx     #ecx will be the index; startin at =0


loop:


cmpl %esi, %ecx      # compare index witht the num_Values
jge done            # if the index is >= num_Values, then we stop

add1 (%rdi,%rcx,4), %eax    # sum += numbers[index]

add $1, %ecx                #index++

jmp loop            # Repeat unitl done


 ret     # Return ontrol back to C program

.section .note.GNU-stack,"",@progbits