#include <stdio.h>
#include <string.h>

// Assembly function from hamming.s
int hamming_distance(char *string_1, char *string_2);

int main()
{
    char string_1[256];
    char string_2[256];

    // pull the first string
    printf("Enter first string: ");
    fgets(string_1, 256, stdin);

    // Get second one 
    printf("Enter second string: ");
    fgets(string_2, 256, stdin);

    // Remove newline created by pressing Enter
    string_1[strcspn(string_1, "\n")] = '\0';
    string_2[strcspn(string_2, "\n")] = '\0';

    // Call assembly on our  function
    int distance = hamming_distance(string_1, string_2);

    // Print result
    printf("The Hamming distance is %d\n", distance);

    return 0;
}