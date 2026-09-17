.section .data

# This will ask the user to enter the first string they want
# calculate the bytes in the string
prmpt1:
    .ascii "Enter your first string:"
prmpt1_len = . - prmpt1


prmpt2:
    .ascii "Enter second string:"
prmpt2_len = . - prmpt2
# now ask to end second string


.section .bss

strng1:
    .skip 256 #this means to Reserve 256 bytes at the start

strng2: 
    .skip 256


.section .text
.global _start

_start:

# write and put the adress of prmpt 1 into rsi and also figure out how many bytes

movq $1, %rax               # asking the system to write
movq $1, %rdi               # asking  where and saying that stdout; basically print to terminal
leaq prmpt1(%rip), %rsi     #leaq puts the address of letters into rsi ; rsi is where is the text
movq $prmpt1_len, %rdx       # how many characters/bytes?
syscall                     # excute / wrtire to terimnal

#read 

movq $0, %rax               #asking the system to read now 
movq $0, %rdi               # stdin
leaq strng1(%rip), %rsi     # rsi acting like where to put the user input given
movq $255, %rdx             # max number of bytes to read
syscall

movq %rax, %r12             # save the number of bytes read

# now do the same for prompt 2 and write

movq $1, %rax               # asking the system to write
movq $1, %rdi               # asking  where and saying that stdin
leaq prmpt2(%rip), %rsi     # but we are doing same register for prmpt 1 again? wouldnt that mess our data up from before hmmm
movq $prmpt2_len, %rdx      # how many characters/bytes?
syscall

# read againn for string 2

movq $0, %rax               # asking the system to read now 
movq $0, %rdi               # stdin
leaq strng2(%rip), %rsi 
movq $255, %rdx  
syscall

movq %rax, %r13             # save second input length now

#Exit 
movq $60, %rax
movq $0,  %rdi
syscall




