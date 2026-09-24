#include <stdio.h>
#include <stdlib.h>
extern int sum_numbers(int[], int); // Assembly function

int main(int filec, char *filev[])
{ 
   
   if (filec !=2 ){
    printf( "Usage: %s <data file>\n", filev[0]);
    return 1;
   }
   
    FILE *fp = fopen ( filev[1],"r");  //open file

    if(fp== NULL){
        perror("Error opening file"); // eerorr if file doesnt open
    return 1;

    }

    // now to scan
    int num_Values; // how many numebers in file
    
    // read firs line to tell us num_Values
    if (fscanf(fp, "%d", &num_Values) != 1){
        printf( " Error reading numbers first line\n");
        fclose(fp);
        return 1;
    }

    // make a array based on the given num_Values
    int *numbers = malloc(num_Values * sizeof(int));

    if (numbers == NULL){
        printf( "Error: Memoery allocation has failed");
        fclose(fp);
        return 1;
    }

    // now read exactly how many num_Values worth of integers
    for (int i =0 ; i < num_Values; i++){
        if (fscanf(fp, "%d", & numbers[i] ) != 1){
            printf("Error reading the data\n");
            free(numbers);
            fclose(fp);
            }
            return 1;
    }
    fclose(fp);

    // debuggin stuff
  printf("Loaded %d numbers:\n", num_Values);

    for (int i = 0; i < num_Values; i++) {
        printf("Array[%d] = %d\n", i, numbers[i]);
    }

    // assembly code
    int sum = sum_numbers(numbers, num_Values);
    printf(" Sum = %d\n", sum);
    free(numbers);





    
return 0;

}