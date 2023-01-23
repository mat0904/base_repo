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
FLAGS	=	-Wall -Werror
LIBNAME	=	../libmy_printf.a

all:	$(LIBNAME)

%.o:	%.c
		@echo -e "\033[31m\033[01mCréation d'un fichier librairie objet: $@ -> $^ \033[0m"
		$(CC) -o $@ -c $^ $(CFLAGS) $(FLAGS) $(LIB)

$(LIBNAME):	$(OBJ)
			@echo -e "\033[31m\033[01mCréation de la librairie\033[0m"
			ar rc $(LIBNAME) $(OBJ)

clean:
		rm -rf $(OBJ)

fclean:	clean
		rm -rf $(LIBNAME)

re:	fclean all

exe:	all
		gcc -o output ./src/main.c -L. -lmy_printf
