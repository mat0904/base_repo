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
SANITIZE	=	-g3
EXE	=	binary

all:	$(EXE)

%.o:	%.c
		@$(CC) -o $(OBJ_FOLDER)/$(notdir $@) -c $^ $(CFLAGS) $(FLAGS) $(LIB)

$(EXE):	$(OBJ)
		$(CC) -o $(EXE) $(OBJ_FILES) $(CFLAGS) $(FLAGS) $(LIB)

clean:
		@make -C ./tests clean
		@rm -rf $(OBJ_FILES)
		@rm -rf vgcore*
		@rm -rf *.gcda
		@rm -rf *.gcno

fclean:	clean
		@make -C ./tests fclean
		@rm -rf $(EXE)

valgrind:	$(OBJ)
			$(CC) -o $(EXE) $(OBJ_FILES) $(CFLAGS) $(FLAGS) $(LIB) $(SANITIZE)

re:	fclean all

unit_tests:
			@make -C ./tests

tests_run:	unit_tests
			./tests/binary_test
