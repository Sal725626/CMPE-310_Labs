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