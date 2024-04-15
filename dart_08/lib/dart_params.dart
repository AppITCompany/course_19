void main() {
  chygar(12, 23, '+');
  chygar(23, 34, '-');
  chygar(23, 34, '/');
  chygar(23, 34, '*');
  chygar(3, 4);
  chygar(3, 4, '/');

  chygarNamed(a: 2, b: 3, operation: '*');
  chygarNamed(a: 2, b: 3);
}

// Optional positional parameters
void chygar(num a, num b, [String operation = '+']) {
  if (operation == '+') {
    print(a + b);
  } else if (operation == '-') {
    print(a + b);
  } else if (operation == '*') {
    print(a * b);
  } else if (operation == '/') {
    print(a / b);
  } else if (operation == '%') {
    print(a % b);
  }
}

// Named parameters
void chygarNamed({
  required num a,
  required num b,
  String operation = '+',
}) {
  if (operation == '+') {
    print(a + b);
  } else if (operation == '-') {
    print(a + b);
  } else if (operation == '*') {
    print(a * b);
  } else if (operation == '/') {
    print(a / b);
  } else if (operation == '%') {
    print(a % b);
  }
}
