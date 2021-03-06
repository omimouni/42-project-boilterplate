# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: omimouni <omimouni@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/12 10:51:56 by omimouni          #+#    #+#              #
#    Updated: 2021/09/12 11:32:42 by omimouni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap

SRCS = $(wildcard src/*.c src/**/*.c)
OBJS = $(subst src/,,$(addprefix build/, $(patsubst %.c, %.o, $(SRCS))))

GCC	 = @/usr/bin/env gcc
RM = @/usr/bin/env rm

FLAGS_OBJS = -I./include -c -o

all: $(NAME)

clean:
	$(RM) -rf $(OBJS)
	@make -sC ./libft clean

fclean: clean
	$(RM) -rf $(NAME)
	$(RM) -rf build/
	@make -sC ./libft fclean

re: fclean all

$(NAME): $(OBJS)
	@make -sC ./libft
	$(GCC) -o $(NAME) $(OBJS)

build/%.o: src/%.c
	@mkdir -p $(dir $@)
	$(GCC) $(FLAGS_OBJS) $@ $<

.PHONY: all clean fclean re