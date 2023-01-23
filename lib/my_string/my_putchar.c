/*
** EPITECH PROJECT, 2023
** base_repo
** File description:
** my_putchar
*/

#include "prototype.h"

int my_putchar(const char character)
{
    write(1, &character, 1);
    return 0;
}
