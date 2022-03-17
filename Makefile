NAME = Minitalk

SRCS = client.c server.c

OBJ = $(SRCS:.c=.o)

CFLAGS = -Wall -Wextra -Werror

CC = gcc

all: $(NAME)

$(NAME): server client

server:
	$(CC) $(CFLAGS) -c server.c && $(CC) -o server server.o

client:
	$(CC) $(CFLAGS) -c client.c && $(CC) -o client client.o

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f client
	rm -f server

re: fclean all

.PHONY: all clean fclean re
