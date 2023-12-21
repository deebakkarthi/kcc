int elam, foo, bar;
float varun;
char ajay;
double deebak;

volatile volatile int x;
static static double y;

int main() {
  int secret_num = 17;
  int guess;
  int tries = 0;

  printf("I'm thinking of a number between 1 and 100. Guess it!\n");
  while (1) {
    printf("Enter your guess: ");
    scanf("%d", &guess);
    tries++;
    if (guess < secret_num) {
      printf("Your guess is too low. Try again!\n");
    } else if (guess > secret_num) {
      printf("Your guess is too high. Try again!\n");
    } else {
      printf("Congratulations! You guessed it in %d tries.\n", tries);
      break;
    }
  }
  return 0;
}
int f1() {
  int secret_num = 17;
  int guess;
  int tries = 0;

  printf("I'm thinking of a number between 1 and 100. Guess it!\n");
  while (1) {
    printf("Enter your guess: ");
    scanf("%d", &guess);
    tries++;
    if (guess < secret_num) {
      printf("Your guess is too low. Try again!\n");
    } else if (guess > secret_num) {
      printf("Your guess is too high. Try again!\n");
    } else {
      printf("Congratulations! You guessed it in %d tries.\n", tries);
      break;
    }
  }
  return 0;
}
int f2() {
  int secret_num = 17;
  int guess;
  int tries = 0;

  printf("I'm thinking of a number between 1 and 100. Guess it!\n");
  while (1) {
    printf("Enter your guess: ");
    scanf("%d", &guess);
    tries++;
    if (guess < secret_num) {
      printf("Your guess is too low. Try again!\n");
    } else if (guess > secret_num) {
      printf("Your guess is too high. Try again!\n");
    } else {
      printf("Congratulations! You guessed it in %d tries.\n", tries);
      break;
    }
  }
  return 0;
}
int f3() {
  int secret_num = 17;
  int guess;
  int tries = 0;

  printf("I'm thinking of a number between 1 and 100. Guess it!\n");
  while (1) {
    printf("Enter your guess: ");
    scanf("%d", &guess);
    tries++;
    if (guess < secret_num) {
      printf("Your guess is too low. Try again!\n");
    } else if (guess > secret_num) {
      printf("Your guess is too high. Try again!\n");
    } else {
      printf("Congratulations! You guessed it in %d tries.\n", tries);
      break;
    }
  }
  return 0;
}
