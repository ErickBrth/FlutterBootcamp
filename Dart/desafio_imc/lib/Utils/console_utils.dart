import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  double calculaImc(double peso, double altura) {
    double imc = peso / (altura * altura);
    try {
      if (peso <= 0 || altura <= 0) {
        throw ArgumentError("O valor não pode ser zero");
      }
    } catch (e) {
      print(ArgumentError());
    }
    return double.parse(imc.toStringAsFixed(1));
  }

  String classificacaoImc(double imc) {
    switch (imc) {
      case < 16:
        return "Magreza grave";
      case > 16 && < 17:
        return "Magreza moderada";

      case >= 17 && < 18.5:
        return "Magreza leve";

      case >= 18.5 && < 25:
        return "Saudável";

      case >= 25 && < 30:
        return "Sobrepeso";

      case >= 30 && < 35:
        return "Obesidade Grau I";

      case >= 35 && < 40:
        return "Obesidade Grau II";

      case >= 40:
        return "Obesidade Grau III";

      default:
        print("Classificação inválida!");
        exit(0);
    }
  }
}
