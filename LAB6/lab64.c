#include <unistd.h>
#include <sys/types.h>
main()
{
pid_t pid[2];
printf("just one process before the fork() \n");
for(int k=0;k<2;k++)
{
pid[k]= fork();
int  i,j;
i=getpid();
j=getppid();
printf("------------------------\n");
printf("curr=%d, parent=%d\n",i,j);
if(pid[k]== 0)
printf("I am the child process 1\n");
else if(pid[k] > 0)
printf("I am the parent process 1\n");
else
printf("The fork() has failed \n");
}

/*pid1=fork();
int  a,b;
a=getpid();
b=getppid();
printf("----------------------\n");
printf("curr=%d, parent=%d\n",a,b);
if(pid1==0)
printf("I am the child process 2\n");
else if(pid1>0)
printf("I am the parent process 2\n");
else
printf("The fork() has failed\n");
*/

}