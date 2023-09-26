import 'package:meu_app/OO/classes/Pessoa.dart';
import 'package:meu_app/OO/service/NotificacaoInterface.dart';

class NotificacaoSMS implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando SMS para: ${pessoa.getNome()}");
  }
}
