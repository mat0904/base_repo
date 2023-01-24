/*
** EPITECH PROJECT, 2023
** base_repo
** File description:
** my_stat
*/

#include "other.h"
#include "prototype.h"

int file_size(const char *filepath)
{
    int fd = open(filepath, O_RDONLY);
    int BUF_SIZE = 32;
    char *buffer = malloc(BUF_SIZE);
    int size = 0;
    int read_size = 0;
    while ((read_size = read(fd, buffer, BUF_SIZE)) != 0) {
        size += read_size;
    }
    free(buffer);
    close(fd);
    return size;
}
