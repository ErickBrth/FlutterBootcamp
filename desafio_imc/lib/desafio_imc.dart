import 'dart:io';

import 'package:desafio_imc/Utils/console_utils.dart';
import 'package:desafio_imc/Utils/exceptions/numero_invalido_exception.dart';

void main(List<String> arguments) {
  double imc;
  double peso;
  double altura;
  String resultado = "";
  String texto;

  print("Bem vindo ao sistema de Cálculo de IMC!");

  print("digite o peso: ");
  try {
    texto = ConsoleUtils.lerString();
    if (texto.trim() == "") {
      throw NumeroInvalidoException();
    }
    peso = double.parse(texto);
  } on NumeroInvalidoException {
    print(NumeroInvalidoException().toString());
    exit(0);
  }
  print("digite a altura(metros 0.0m): ");
  try {
    texto = ConsoleUtils.lerString();
    if (texto.trim() == "") {
      throw NumeroInvalidoException().error();
    }
    altura = double.parse(texto);
  } on NumeroInvalidoException {
    print(NumeroInvalidoException().toString());
    exit(0);
  }

  imc = ConsoleUtils().calculaImc(peso, altura);

  resultado = ConsoleUtils().classificacaoImc(imc);

  print("o seu IMC é: $imc - $resultado");
  //valor do IMC arredondado em 1 casa decimal
}
