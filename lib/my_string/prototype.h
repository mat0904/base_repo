/*
** EPITECH PROJECT, 2023
** base_repo
** File description:
** prototype.h
*/

#ifndef MY_STRING_H_
    #define MY_STRING_H_

    #include "../../include/my_lib.h"

    int my_putchar(const char character);
    int my_putstr(const char *str);
    int my_strlen(const char *str);
    char *my_strcat(char *dest, const char *src);
    char *my_strcpy(char *dest, const char *src);
    int my_strcmp(const char *str_1, const char *str_2);
    char *my_strdup(const char *src);
    char *my_revstr(char *str);
    int my_strerror(int errnum);

#endif
