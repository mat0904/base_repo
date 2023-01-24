##
## EPITECH PROJECT, 2023
## my_string
## File description:
## Makefile
##

SRC	=	file_size.c


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
