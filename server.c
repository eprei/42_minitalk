#include "minitalk.h"

void ft_print_bits(char *bits)
{
	int pow;
	char c;
	int i;

	pow = 1;
	c = 0;
	i = 7;
	while (i + 1 > 0)
    {
        c = c + (pow * (bits[i] - '0'));
        pow = pow * 2;
        i--;
    }
	write(1, &c, 1);
}

int	ft_putchar(char c)
{
	return (write(1, &c, 1));
}

int	ft_putnbr(unsigned int i, int base)
{
	char	*base_set;
	int		count;
	int		n;

	base_set = "0123456789abcdef";
	count = 0;
	if (i / base > 0)
		count += ft_putnbr(i / base, base);
	n = i % base;
	count += ft_putchar(base_set[n]);
	return (count);
}

void ft_read_binary(int sig)
{
	static char *bits = NULL;
	static int i = 0;

	if (bits == NULL)
	{
		bits = malloc(9 * sizeof(char));
		bits[8] = '\0';
	}
	if (bits == NULL)
		return;
	if (sig == 30)
		bits[i++] = '1';
	else
		bits[i++] = '0';
	if (i == 8)
	{
		ft_print_bits(bits);
		free(bits);
		bits = NULL;
		i = 0;
	}
}

int main(void)
{
    write(1, "Server PID: ", 13);
    ft_putnbr(getpid(), 10);
    write(1, "\n", 1);
	while (1)
	{
		signal(SIGUSR1, ft_read_binary);
		signal(SIGUSR2, ft_read_binary);
	}
    return (0);
}