# LAB 2
## Compile
gcc -nostdlib -no-pie print_hello.s -o hello
<br> gcc -no-pie Task_1.s print_ram.c -o task1
<br> gcc -no-pie Task_2.s print_ram.c -o task2
<br> gcc -no-pie Task_3.s print_ram.c -o task3
<br>gcc -no-pie Task_4.s print_ram.c -o task4

## Run
./hello
<br> ./task1
<br> ./task2
<br> ./task3
<br> ./task4

# LAB 3
## Compile
gcc -no-pie hamming.s main.c -o lab3

## Run
./lab3

Example:

Enter first string: hello  
Enter second string: world  
The Hamming distance is 14

# LAB 4
## Compile
gcc -no-pie lab4.c int.s -o lab4

## Run
./lab4 data.txt
echo $?


# LAB 5

## Part IA - Unoptimized Assembly

### Compile
gcc -O0 -S helloworld.c -o helloworld.s

### View
cat helloworld.s


## Part IB - Optimized Assembly

### Compile
gcc -O4 -S helloworld.c -o helloworld_optimized.s

### View
cat helloworld_optimized.s


## Part II - C vs C++ Assembly

### Compile C
gcc -O0 -S helloworldC.c -o helloworldC.s

### Compile C++
g++ -O0 -S helloworldCpp.cpp -o helloworldCpp.s

### Check File Size
ls -l helloworldC.s helloworldCpp.s

### Check Line Count
wc -l helloworldC.s helloworldCpp.s


## Part III - While Loop

### Compile
gcc -O0 -S whileloop.c -o whileloop.s

### View
cat whileloop.s


## Part III - Maximum Value

### Compile
gcc -no-pie max.s -o max

### Run
./max

Expected maximum value: 23


#LAB 6

Upload to arduino and run