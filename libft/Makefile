# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: omimouni <omimouni@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/12 11:16:46 by omimouni          #+#    #+#              #
#    Updated: 2021/09/12 11:23:24 by omimouni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

OBJ_DIR = ../build/libft/

SRCS = $(wildcard *.c **/*.c)
OBJS = $(addprefix $(OBJ_DIR), $(patsubst %.c, %.o, $(SRCS)))

GCC = @/usr/bin/env gcc


all: $(OBJS)

$(OBJ_DIR)%.o: %.c
	mkdir -p $(dir $@)
	$(GCC) -c -o $@ $<
	