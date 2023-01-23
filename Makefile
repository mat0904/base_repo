##
## EPITECH PROJECT, 2023
## project
## File description:
## Makefile
##

SRC	=	src/main.c

OBJ	=	$(SRC:.c=.o)
CC	=	gcc
CFLAGS	=	-Wall -Werror
FLAGS	=
LIB	=	-L./lib -lmy_string -lmy_printf -lmy_stdlib
TEST	=	--coverage -lcriterion
EXE	=	binary_name

all:	$(EXE)

%.o:	%.c
		@echo "COMPILATION D4UN FICHIER"
		$(CC) -o $@ $^ $(CFLAGS) $(FLAGS) $(LIB)

$(EXE):	$(OBJ)
		make -C ./lib
		$(CC) -o $@ $< $(LIB) $(CFLAGS) $(FLAGS) $(LIB)

clean:
		make -C ./lib clean
		rm -rf $(OBJ)
		rm -rf *.gcna
		rm -rf *.gcdo

fclean:	clean
		make -C ./lib fclean
		rm -rf $(EXE)

re:	fclean all
