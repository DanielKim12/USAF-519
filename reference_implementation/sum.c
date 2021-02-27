#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

int main(int argc, char** argv) {
  int sum = 0;
  for(int i = 1; i < argc; i++) {
    // Convert argv[i] to an integer
    char *endptr;
    sum += strtol(argv[i], &endptr, 10);
    if(endptr != argv[i] + strlen(argv[i])) {
        printf("'%s' is not an integer\n", argv[i]);
        return 1;
    }
  }
  printf("%d\n", sum);
  return 0;
}