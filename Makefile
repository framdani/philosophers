CC= gcc

CFLAGS = -Wall -Wextra -Werror -fsanitize=address

SRCS = srcs/main.c\
		srcs/init.c\
		srcs/time.c\
		srcs/check_args.c\
		srcs/actions.c\
		srcs/exit.c

NAME = philo

all:$(NAME)
$(NAME):$(SRCS)
	@$(CC) $(CFLAGS) $(SRCS) -o philo

clean:
	cd srcs && rm -rf *.o
fclean:clean
	@rm -rf philo
re: fclean all