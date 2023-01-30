##
## EPITECH PROJECT, 2023
## project
## File description:
## Makefile
##

SRC	=	src/main.c	\
		src/test/djqds.c	\

OBJ_FOLDER	=	obj
OBJ	=	$(SRC:.c=.o)
OBJ_FILES	=	$(addprefix $(OBJ_FOLDER)/, $(notdir $(OBJ)))

CC	=	gcc
CFLAGS	=	-Wall -Werror
FLAGS	=
LIB	=	-L./lib -lmy_string -lmy_printf -lmy_stdlib
SANITIZE	=	-g3
EXE	=	binary_name

all:	$(EXE)

%.o:	%.c
		@echo -e "\033[32m\033[01mCréation d'un fichier objet: $(OBJ_FOLDER)/$($@) -> $^ \033[0m"
		@$(CC) -o $(OBJ_FOLDER)/$(notdir $@) -c $^ $(CFLAGS) $(FLAGS) $(LIB)

$(EXE):	$(OBJ)
		@make -C ./lib
		@echo -e "\033[32m\033[01mCompilation des fichiers objets\033[0m"
		$(CC) -o $(EXE) $(OBJ_FILES) $(LIB) $(CFLAGS) $(FLAGS) $(LIB)

clean:
		@make -C ./lib clean
		@rm -rf $(OBJ_FILES)
		@rm -rf vgcore*
		@rm -rf *.gcda
		@rm -rf *.gcno

fclean:	clean
		@make -C ./lib fclean
		@rm -rf $(EXE)

re:	fclean all
