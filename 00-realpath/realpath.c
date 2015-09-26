#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  if (argc != 2) {
    fprintf(stderr, "Usage: %s path\n", argv[0]);
    return 1;
  }
  printf("%s\n", realpath(argv[1], NULL));
  return 0;
}
