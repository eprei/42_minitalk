SRCS = client.c server.c

CFLAGS = -Wall -Wextra -Werror

CC = gcc

all: $(SERVER_AND_CLIENT)

$(SERVER_AND_CLIENT):
					 $(CC) $(CFLAGS) client.c