/*
** EPITECH PROJECT, 2023
** base_repo
** File description:
** my_strcat
*/

#include "prototype.h"

char *my_strcat(char *dest, const char *src)
{
    int len = my_strlen(dest);
    int i = 0;
    while (*(src + i) != '\0') {
        *(dest + len + i) = *(src + i);
        i += 1;
    }
    *(dest + len + i) = '\0';
    return dest;
}
