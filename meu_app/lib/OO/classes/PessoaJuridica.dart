import 'package:meu_app/OO/Enum/tipo_notificacao.dart';
import 'package:meu_app/OO/classes/Pessoa.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  PessoaJuridica(String nome, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

  void setCnpj(String cnpj) {
    _cnpj = cnpj;
  }

  String getCpf() {
    return _cnpj;
  }

  @override
  String toString() {
    return {
      "Nome": super.getNome(),
      "Endereco": super.getEndereco(),
      "Cnpj": _cnpj,
      "TipoNotificacao": super.getTipoNotificacao()
    }.toString();
  }
}
