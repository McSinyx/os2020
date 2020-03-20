#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
	pid_t ps_pid = fork();
	if (ps_pid == -1) {
		puts(strerror(errno));
		return EXIT_FAILURE;
	} else if (!ps_pid) {
		execv("/bin/ps", (char *const []) {"/bin/ps", "-ef", NULL});
		puts(strerror(errno));
		return EXIT_FAILURE;
	} else {
		wait(NULL);
	}

	pid_t free_pid = fork();
	if (free_pid == -1) {
		puts(strerror(errno));
		return EXIT_FAILURE;
	} else if (!free_pid) {
		execv("/bin/free", (char *const []) {"/bin/free", "-h", NULL});
		puts(strerror(errno));
		return EXIT_FAILURE;
	} else {
		wait(NULL);
	}

	return EXIT_SUCCESS;
}
