//
//  main.c
//  Time
//
//  Created by Yann's AW Office on 27/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{

    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);

    printf("\n");
    
    long nowPlus4Mil = time(NULL) + 4000000;
    
    struct tm futureTime;
    
    localtime_r(&nowPlus4Mil, &futureTime);
    
    printf("The date 4,000,000 seconds from now will be %d-%d-%d.\n", futureTime.tm_mon + 1, futureTime.tm_mday, futureTime.tm_year + 1900);
    
    printf("\n");
    
    return 0;
}

