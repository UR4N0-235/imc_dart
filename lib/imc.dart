import 'dart:io';

import 'package:imc/person.dart';
import 'package:imc/errors.dart';

void imc() {
  try {
    print("insira seu nome, altura(em cm) e peso(em kg), como no exemplo:");
    print("Joao 180 70");
    print("ou sendo mais especifico: Joao 180.9 70.4");

    final List<String> input = (stdin.readLineSync())?.split(" ") ?? [];
    if (input.length < 3) throw InvaldInputError().call();

    final user = Person(
        name: input[0],
        height: double.tryParse(input[1]) ?? 0,
        mass: double.tryParse(input[2]) ?? 0);

    if (!user.isValid()) throw InvalidHeightOrMass().call();

    print(user.imc());
  } catch (error) {
    print("ERROR: $error");
  }
}
