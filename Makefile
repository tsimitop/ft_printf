# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tsimitop <tsimitop@student.42heilbronn.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/29 14:02:51 by tsimitop          #+#    #+#              #
#    Updated: 2023/11/18 15:25:00 by tsimitop         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ft_printf.c ft_putstr_fd.c ft_putnbr_fd.c ft_putchar_fd.c \
ft_puthexlow_fd.c ft_puthexup_fd.c ft_putunsign_fd.c ft_putptr_fd.c

OBJ = $(SRC:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ)
	ar rc $(NAME) $(OBJ)

$(OBJ) : %.o : %.c
	@gcc -c -Wall -Wextra -Werror $< -o $@

clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean all
