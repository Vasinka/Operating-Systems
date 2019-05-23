#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

int main(int argc, char *argv[])
{
        if(argc == 1)
        {
            write(2, "err\n", 4);
		        exit(-1);
        }
        
       char *buff[256];
       
      for(int i = 1; i < argc; i++)
      {
            int fd = open(argv[i], O_RDONLY);
            int readBytes;
            if((readBytes = read(fd, buff, 256)) > 0)
            {
               write(1, buff, readBytes);
            }
      }
      
        exit(0);
}
