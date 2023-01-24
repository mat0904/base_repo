/*
** EPITECH PROJECT, 2023
** base_repo
** File description:
** main
*/

#include "../include/prototype.h"

int main(const int ac, const char **av)
{
    my_printf("%d\n", file_size(av[1]));
    return 0;
}
