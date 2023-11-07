struct my_struct {
  int x;
};

enum Colors {
  RED,
  BLUE,
  GREEN
}

typedef struct {
  int y;
} my_type;

int main() {
  /*Type specifier*/
  void a;
  char a;
  short a;
  short a;
  int a;
  long a;
  double a;
  signed a;
  unsigned a;
  struct my_struct a;
  union my_struct a;
  enum Color color;

  int *a;

  int a, b, c;

  /*Storage Class*/
  static int x;
  auto int x;
  register int x;
  extern int x;

  /*Type Qualifier*/
  const int x;
  volatile int x;
}
