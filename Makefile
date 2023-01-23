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
LIB	=	-L./lib -lmy_string -lmy_printf -lmy_stflib
TEST	=	--coverage -lcriterion
EXE	=	binary_name

all:	$(EXE)

$(EXE):	$(OBJ)
		$(CC) -o $@ $< $(LIB) $(CFLAGS) $(FLAGS) $LIB

clean:
		rm -rf $(OBJ)
		rm -rf *.gcna
		rm -rf *.gcdo

fclean:	clean
		rm -rf $(EXE)

re:	fclean all
