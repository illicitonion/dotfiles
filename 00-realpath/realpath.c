#include <errno.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  if (argc != 2) {
    fprintf(stderr, "Usage: %s path\n", argv[0]);
    return 1;
  }

  const char *inPath = argv[1];
  char *outPath = realpath(inPath, NULL);
  if (outPath == NULL) {
    fprintf(stderr, "%s: %s\n", inPath, strerror(errno));
    return 1;
  }
  printf("%s\n", outPath);
  return 0;
}
