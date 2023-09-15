class Person {
  final String name;
  final double height;
  final double mass;

  Person({required this.name, required this.height, required this.mass});

  double imc() {
    return mass / ((height / 100) * (height / 100));
  }

  bool isValid() {
    return (name != '' && height != 0 && mass != 0);
  }
}
