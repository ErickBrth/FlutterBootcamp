import 'package:meu_app/OO/classes/Pessoa.dart';
import 'package:meu_app/OO/service/NotificacaoInterface.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Email para: ${pessoa.getNome()}");
  }
}
