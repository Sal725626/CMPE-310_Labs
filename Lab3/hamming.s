.section .text
.global hamming_distance

hamming_distance:

    
# C will pass us this:
# RDI = address of string 1
# RSI = address of string 2

# RAX will contain the returned Hamming distance

xorq %rax, %rax  # RAX = 0, total Hamming distance


loop_chars:

movb (%rdi), %cl
# CL = current character from string 1

movb (%rsi), %dl
# DL = current character from string 2

# stop when either reach null terminotr
cmpb $0, %cl
je done

cmpb $0, %dl
je done

# XOR the two characters and every 1 in the results will be a different bit

xorb %dl, %cl

movb $8, %r8b   # Each character has 8 bits


check_bits: # check for bits and process accordingly 
testb $1, %cl   # see n check for lowest bit
jz equal_bit     # if same then bit is 0
incq %rax       # if its 1 then increase the distance 

equal_bit: 
shrb $1, %cl    # move into to next lowest position
decb %r8b       # One less bit to check
jne check_bits


# Move to next character in both strings
incq %rdi
incq %rsi
jmp loop_chars


done:
ret    # Return the value is already in RAX


.section .note.GNU-stack,"",@progbits

