import 'dart:convert';
import 'dart:io';

import 'package:meu_app/OO/Enum/tipo_notificacao.dart';
import 'package:meu_app/OO/classes/PessoaFisica.dart';
import 'package:meu_app/OO/classes/PessoaJuridica.dart';
import 'package:meu_app/OO/service/EnviarNotificacao.dart';
import 'package:meu_app/exception/nome_invalido_exception.dart';
import 'package:meu_app/models/Alunos.dart';
import 'package:meu_app/models/console_utils.dart';

void main(List<String> arguments) {
  var pf = PessoaFisica(
    "Erick",
    "rua joaquim caroca",
    "123456756",
  );
  var pj = PessoaJuridica("Empresa +", "rua joaquim caroca", "123534347456834",
      tipoNotificacao: TipoNotificacao.EMAIL);

  print(pf);
  print(pj);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pf);
  enviarNotificacao.notificar(pj);

  //try catch
  //tratamento de erro
  print("digite um numero: ");
  var line = stdin.readLineSync(encoding: utf8);
  try {
    double numero = double.parse(line ?? "");
    print(numero);
  } catch (e) {
    print("numero invalido: $line");
  }

  execute();
}

void execute() {
  print("Bem vindo ao sistema de notas!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno:");

  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = "Nome Padrão";
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  var aluno = Aluno(nome);
  double? nota;

  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida(
        "Digite a nota ou S para sair", "S");
    if (nota != null) {
      aluno.adicionarNota(nota);
    }
  } while (nota != null);
  print("As notas digitadas foram: ${aluno.getNotas()}");
  print("A média do aluno foi: ${aluno.retornaMedia()}");
  if (aluno.aprovado(7)) {
    print("O aluno ${aluno.getNome()} aprovado");
  } else {
    print("O aluno ${aluno.getNome()} reprovado");
  }
}
