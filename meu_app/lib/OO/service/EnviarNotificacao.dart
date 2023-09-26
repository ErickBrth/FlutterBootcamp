import 'package:meu_app/OO/Enum/tipo_notificacao.dart';
import 'package:meu_app/OO/classes/Pessoa.dart';
import 'package:meu_app/OO/service/NotificacaoInterface.dart';
import 'package:meu_app/OO/service/impl/NotificacaoEmail.dart';
import 'package:meu_app/OO/service/impl/NotificacaoPush.dart';
import 'package:meu_app/OO/service/impl/NotificacaoSMS.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotification();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}
