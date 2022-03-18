# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: epresa-c <epresa-c@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/18 10:54:54 by epresa-c          #+#    #+#              #
#    Updated: 2022/03/18 11:37:17 by epresa-c         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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

.PHONY: all server client clean fclean re
