##
## EPITECH PROJECT, 2023
## my_string
## File description:
## Makefile
##

SRC	=   my_putstr.c	\
		my_strlen.c	\
		my_strcat.c	\
		my_strcpy.c	\
		my_strdup.c	\
		my_strcmp.c	\
		my_revstr.c	\
		my_putchar.c	\
		my_strerror.c	\


OBJ	=	$(SRC:.c=.o)
FLAGS	=	-Well -Werror -pedantic -ansi
LIBNAME	=	../libmy_string.a

all:	$(LIBNAME)

$(LIBNAME):	$(OBJ)
			ar rc $(LIBNAME) $(OBJ)

clean:
		rm -rf $(OBJ)

fclean:	clean
		rm -rf $(LIBNAME)

re:	fclean all
