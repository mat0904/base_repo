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
		my_strncpy.c	\
		my_strncat.c	\
		my_putchar.c	\
		my_strerror.c	\
		my_strappend.c	\


OBJ	=	$(SRC:.c=.o)
FLAGS	=	-Wall -Werror
LIBNAME	=	../libmy_string.a

all:	$(LIBNAME)

%.o:	%.c
		@echo -e "\033[32m\033[01mCréation d'un fichier librairie objet: $@ -> $^ \033[0m"
		$(CC) -o $@ -c $^ $(CFLAGS) $(FLAGS) $(LIB)

$(LIBNAME):	$(OBJ)
			@echo -e "\033[32m\033[01mCréation de la librairie\033[0m"
			ar rc $(LIBNAME) $<

clean:
		rm -rf $(OBJ)

fclean:	clean
		rm -rf $(LIBNAME)

re:	fclean all
