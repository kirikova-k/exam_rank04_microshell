#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/wait.h>

#define READ 0
#define WRITE 1

int	dup_stdin, ret, haspipe;

int	ft_strlen(char *str)
{
	int i = 0;
	while (str[i])
		i++;
	return (i);
}

void	ft_putstr_fd(char *str, int fd)
{
	write(fd, str, ft_strlen(str));
}

void ft_fatalerr(void)
{
	ft_putstr_fd("error: fatal\n", 2);
	exit (1);
}

void ft_exec_error(char *str)
{
	ft_putstr_fd("error: cannot execute ", 2);
	ft_putstr_fd(str, 2);
	ft_putstr_fd("\n", 2);
	exit(1);
}

void	ft_openpipes(int fd[2])
{
	if (haspipe == 1)
	{
		if (close(fd[READ]) == -1)
			ft_fatalerr();
		if (dup2(fd[WRITE], STDOUT_FILENO) == -1)
			ft_fatalerr();
		if (close(fd[WRITE]) == -1)
			ft_fatalerr();
	}
}

void	ft_closepipes(int fd[2])
{
	if (haspipe == 1)
	{
		if (dup2(fd[READ], STDIN_FILENO) == -1)
			ft_fatalerr();
		if (close(fd[READ]) == -1)
			ft_fatalerr();
		if (close(fd[WRITE]) == -1)
			ft_fatalerr();
	}
}

void ft_cd(char **av)
{
	int i = 0;
	while (av[i])
		i++;
	if (i != 2)
	{
		ft_putstr_fd("error: cd: bad arguments\n", 2);
		ret = 1;
		return ;
	}
	if (chdir(av[1]) == -1)
	{
		ft_putstr_fd("error: cd: cannot change directory to ", 2);
		ft_putstr_fd(av[1], 2);
		ft_putstr_fd("\n", 2);
		ret = 1;
		return ;
	}
}

void	ft_exec(char **av, char **envp)
{
	pid_t	pid;
	int		fd[2];

	if (!strcmp(av[0], "cd"))
		return (ft_cd(av));
	if (haspipe == 1)
		if (pipe(fd) == -1)
			ft_fatalerr();
	pid = fork();
	if (pid == 0)
	{
		ft_openpipes(fd);
		if (execve(av[0], av, envp) == -1)
			ft_exec_error(av[0]);
	}
	else
		ft_closepipes(fd);
}

void	ft_command(char **cmd, char **envp)
{
	int i = -1, begin = 0, nproc = 0;

	while (cmd[++i])
	{
		if (!strcmp(cmd[i], "|") || cmd[i + 1] == NULL)
		{
			haspipe = 0;
			if (!strcmp(cmd[i], "|"))
			{
				haspipe = 1;
				cmd[i] = NULL;
			}
			ft_exec(cmd + begin, envp);
			begin = i + 1;
			nproc++;
		}
	}
	while (nproc-- > 0)
		waitpid(-1, 0, 0);
}

void	ft_restorefd(void)
{
	int	tmp;
	tmp = dup(STDIN_FILENO);
	if (dup2(dup_stdin, STDIN_FILENO) == -1)
		ft_fatalerr();
	if (close(tmp) == -1)
		ft_fatalerr();
}

int	main(int ac, char **av, char **envp)
{
	int i = 0, begin = 1;

	dup_stdin = dup(STDIN_FILENO);
	(void)ac;
	while(av[++i])
	{
		if(!strcmp(av[i], ";") || av[i + 1] == NULL)//if ; or last cmd
		{
			if(!strcmp(av[i], ";"))
				av[i] = NULL;
			ft_command(av + begin, envp);
			begin = i +1;
		}
		ret = 0;
		ft_restorefd();
	}
	return (ret);
}
