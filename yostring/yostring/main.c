//
//  main.c
//  yostring
//
//  Created by Yann's AW Office on 20/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h> //For printf
#include <stdlib.h> //for malloc/free
#include <string.h> //for strlen

int main(int argc, const char * argv[])
{
    char x = 0x21; //The Chareacter '!'
    
    while (x <= 0x7e) { //The character '_'
        printf("%x is %c\n", x, x);
        x++;
    }

    // Get a pointer to 5 bytes of memory on the heap
    char *start = malloc(5);
    
    // Put 'L' in the first byte
    *start = 'L';
    
    // Put 'o' in the second byte
    *(start + 1) = 'o';
    
    // Put 'v' in the third byte
    *(start + 2) = 'v';
    
    // Put 'e' in the fourth byte
    *(start + 3) = 'e';
    
    // Put zero in the fifth byte
    *(start + 4) = '\0';
    
    // Print out the string and its length
    printf("%s has %zu characters\n", start, strlen(start));
    
    // Print out the third letter
    printf("The third letter is %c\n", *(start + 2));
    
    // Free the memory so that it can be reused
    free(start);
    start = NULL;
    
    return 0;
}

