class DoMath {
  int n = 10;

  setFact(int n) {
    this.n = n;
  }

  int countFact(int n) {
    if (n == 0) {
      return 1;
    } else {
      return n * countFact(n - 1);
    }
  }

  showFact() {
    print("Factorial is: ${countFact(n)}");
  }
}

void main() {
  DoMath s1 = DoMath();
  s1.setFact(5);
  s1.showFact();
}
