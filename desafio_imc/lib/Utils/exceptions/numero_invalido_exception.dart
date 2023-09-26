class NumeroInvalidoException implements Exception {
  String error() => "Número inválido";

  @override
  String toString() {
    return "NumeroInvalidoException: ${error()}";
  }
}
