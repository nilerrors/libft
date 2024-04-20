# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: senayat <senayat@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/16 22:45:48 by senayat           #+#    #+#              #
#    Updated: 2024/04/20 22:49:03 by senayat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	=	ft_isalnum.c	ft_isalpha.c	ft_isascii.c	\
		ft_isdigit.c	ft_isprint.c	ft_strlen.c	\
		ft_memset.c	ft_bzero.c	ft_memcpy.c	\
		ft_memmove.c	ft_memcmp.c	ft_memchr.c	\
		ft_memccpy.c	ft_calloc.c	ft_atoi.c	\
		ft_itoa.c	ft_putchar_fd.c	ft_putendl_fd.c	\
		ft_putnbr_fd.c	ft_putstr_fd.c	ft_split.c	\
		ft_strchr.c	ft_strdup.c	ft_strjoin.c	\
		ft_strlcat.c	ft_strlcpy.c	

		

OBJS	=	$(SRCS:.c=.o)


CC	= gcc
RM	= rm -f
CFLAGS	= -Wall -Wextra -Werror -I.

NAME	= libft.a


all:		$(NAME)

$(NAME):	$(OBJS)
		ar rcs $(NAME) $(OBJS)

clean:
		$(RM) $(OBJS) $(BONUS_OBJS)

fclean:		clean
		$(RM) $(NAME)

re:		fclean $(NAME)

#bonus:		$(OBJS) $(BONUS_OBJS)
#		ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

.PHONY:		all clean fclean re #bonus

