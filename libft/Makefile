# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: omimouni <omimouni@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/12 11:16:46 by omimouni          #+#    #+#              #
#    Updated: 2021/09/12 12:10:28 by omimouni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

OBJ_DIR = ../build/libft/
LIB_DIR = ../libs/

SRCS = $(wildcard *.c **/*.c)
OBJS = $(addprefix $(OBJ_DIR), $(patsubst %.c, %.o, $(SRCS)))

GCC = @/usr/bin/env gcc
RM = @/usr/bin/env rm -rf


all: $(OBJS)
	@/usr/bin/env ar -rsc $(NAME) $(OBJS)
	@/usr/bin/env ranlib $(NAME) 
	@/usr/bin/env cp $(NAME) $(LIB_DIR)$(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(LIB_DIR)$(NAME)
	$(RM) $(OBJ_DIR)

re: fclean re


$(OBJ_DIR)%.o: %.c
	mkdir -p $(dir $@)
	$(GCC) -c -o $@ $<
