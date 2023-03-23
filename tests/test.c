/*
** EPITECH PROJECT, 2023
** Chocolatine
** File description:
** test
*/

#include <criterion/criterion.h>

int add(int a, int b);

Test(add, should_add_two_numbers) {
    cr_assert_eq(add(1, 2), 3);
}
