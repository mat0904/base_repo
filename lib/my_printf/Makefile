##
## EPITECH PROJECT, 2023
## my_printf
## File description:
## Makefile
##

SRC	=	src/my_printf.c	\
		src/mp_putnbr.c	\
		src/mp_putstr.c	\
		src/mp_putchar.c	\
		src/mp_putfloat.c	\

OBJ	=	$(SRC:.c=.o)
FLAGS	=	-Well -Werror -pedantic -ansi
LIBNAME	=	../libmy_printf.a

all:	$(LIBNAME)

$(LIBNAME):	$(OBJ)
			ar rc $(LIBNAME) $(OBJ)

clean:
		rm -rf $(OBJ)

fclean:	clean
		rm -rf $(LIBNAME)

re:	fclean all

exe:	all
		gcc -o output ./src/main.c -L. -lmy_printf
