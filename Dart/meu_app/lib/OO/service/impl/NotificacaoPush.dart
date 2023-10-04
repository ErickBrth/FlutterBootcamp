import 'package:meu_app/OO/classes/Pessoa.dart';
import 'package:meu_app/OO/service/NotificacaoInterface.dart';

class NotificacaoPushNotification implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Push para: ${pessoa.getNome()}");
  }
}
