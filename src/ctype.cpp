#include <ctype.h>

extern "C" {

int isupper(int c) {
  return c >= 'A' && c <= 'Z';
}

int islower(int c) {
  return c >= 'a' && c <= 'z';
}

int isalpha(int c) {
  return isupper(c) || islower(c);
}

}
