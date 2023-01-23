##
## EPITECH PROJECT, 2023
## project
## File description:
## Makefile
##

SRC	=	main.c	\

TEST_SRC	=	test.c	\

SRC_FOLDER	=	src
OBJ_FOLDER	=	obj
TEST_FOLDER	=	test

OBJ	=	$(SRC:.c=.o)
CC	=	gcc
CFLAGS	=	-Wall -Werror
FLAGS	=
SANITIZE	=	-g3
LIB	=	-L./lib -lmy_string -lmy_printf -lmy_stdlib
TEST	=	--coverage -lcriterion
EXE	=	binary_name

all:	lib $(EXE)

%.o:	$(SRC_FOLDER)/%.c
		@echo -e "\033[32m\033[01mCréation d'un fichier objet: $(OBJ_FOLDER)/$@ -> $^ \033[0m"
		@$(CC) -o $(OBJ_FOLDER)/$@ -c $^ $(CFLAGS) $(FLAGS) $(LIB)

$(EXE):	$(OBJ)
		@make -C ./lib
		@echo -e "\033[32m\033[01mCompilation des fichiers objets\033[0m"
		$(CC) -o $(EXE) $(OBJ_FOLDER)/$< $(LIB) $(CFLAGS) $(FLAGS) $(LIB)

clean:
		@make -C ./lib clean
		@rm -rf $(OBJ_FOLDER)/$(OBJ)
		@rm -rf vgcore*
		@rm -rf *.gcda
		@rm -rf *.gcno
		@rm -rf tests

fclean:	clean
		@make -C ./lib fclean
		@rm -rf $(EXE)

re:	fclean all

unit_tests:
			@make -C ./lib
			@echo -e "\033[32m\033[01mCompilation des fichiers objets\033[0m"
			$(CC) -o tests $(TEST_FOLDER)/$(TEST_SRC) $(SRC_FOLDER)/$(SRC) $(LIB) $(CFLAGS) $(FLAGS) $(TEST)

valgrind:	$(OBJ)
			@make -C ./lib
			@$(CC) -o $(EXE) $(OBJ_FOLDER)/$< $(CFLAGS) $(FLAGS) $(LIB) $(SANITIZE)
			valgrind ./$(EXE)
