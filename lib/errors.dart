class InvaldInputError implements Exception {
  call() {
    return "Faltou de inserir parametros! use o padrao: nome altura(em cm) peso(em kg)!!!";
  }
}

class InvalidHeightOrMass implements Exception {
  call() {
    return "Altura e peso não podem possuir valores iguais ou menores que zero!";
  }
}
