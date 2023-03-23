##
## EPITECH PROJECT, 2023
## Chocolatine
## File description:
## Makefile
##

SRC = src/add.c

MAIN = src/main.c

OBJ = $(SRC:.c=.o)

NAME = tester

all: $(NAME)

$(NAME): $(OBJ)
	gcc -o $(NAME) $(OBJ) $(MAIN)

tests_run: fclean
	gcc -o unit_tests $(SRC) --coverage -lcriterion
	./unit_tests

clean:
	rm -f $(OBJ)
	rm -f *.gc*

fclean: clean
	rm -f $(NAME)
	rm -f unit_tests

re: fclean all

.PHONY: all clean fclean re tests_run
