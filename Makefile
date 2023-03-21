##
## EPITECH PROJECT, 2023
## Chocolatine
## File description:
## Makefile
##

SRC = main.c

OBJ = $(SRC:.c=.o)

NAME = tester

all: $(NAME)

$(NAME): $(OBJ)
	gcc -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
