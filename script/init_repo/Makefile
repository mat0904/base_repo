##
## EPITECH PROJECT, 2023
## project
## File description:
## Makefile
##

SRC	=	src/main.c	\

OBJ_FOLDER	=	obj
OBJ	=	$(SRC:.c=.o)
OBJ_FILES	=	$(addprefix $(OBJ_FOLDER)/, $(notdir $(OBJ)))

CC	=	gcc
CFLAGS	=
FLAGS	=
LIB	=
SANITIZE	=	-g3
EXE	=	init_repo

all:	$(EXE)

%.o:	%.c
		@$(CC) -o $(OBJ_FOLDER)/$(notdir $@) -c $^ $(CFLAGS) $(FLAGS) $(LIB)

$(EXE):	$(OBJ)
		$(CC) -o $(EXE) $(OBJ_FILES) $(CFLAGS) $(FLAGS) $(LIB)

clean:
		@rm -rf $(OBJ_FILES)
		@rm -rf vgcore*
		@rm -rf *.gcda
		@rm -rf *.gcno

fclean:	clean
		@rm -rf $(EXE)

valgrind:	$(OBJ)
			$(CC) -o $(EXE) $(OBJ_FILES) $(CFLAGS) $(FLAGS) $(LIB) $(SANITIZE)

re:	fclean all
