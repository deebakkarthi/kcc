void func(int, int, int, int);

void func(int *, int *, int a[], int y);

void func(int, int, int, int) { return 0; }

void func(int, ...) {}

int* func() {}

int* func();

int main() {
  func(a, b, c, d);
  func(*a);
  func(&a);
}
