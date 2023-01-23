/*
** EPITECH PROJECT, 2023
** base_repo
** File description:
** test
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "../include/prototype.h"

void redirect_all_std()
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

Test(basic_test, return_value, .init = redirect_all_std)
{
    int var = 5;
    cr_assert_eq(var, 5);
}
