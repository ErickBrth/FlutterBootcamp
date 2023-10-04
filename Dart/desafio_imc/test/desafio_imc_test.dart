import 'package:desafio_imc/Utils/console_utils.dart' as utils;
import 'package:test/test.dart';

void main() {
  test('calcular IMC', () {
    expect(utils.ConsoleUtils().calculaImc(50, 1.8), equals(15.4));
  });
  test('Classificar IMC', () {
    expect(
        utils.ConsoleUtils().classificacaoImc(16), equals("Magreza moderada"));
  });
}
