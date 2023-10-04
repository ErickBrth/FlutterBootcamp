import 'package:meu_app/OO/Enum/tipo_notificacao.dart';
import 'package:meu_app/OO/classes/Pessoa.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  PessoaFisica(String nome, String endereco, String cpf,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  @override
  String toString() {
    return {
      "Nome": super.getNome(),
      "Endereco": super.getEndereco(),
      "Cpf": _cpf,
      "TipoNotificacao": super.getTipoNotificacao()
    }.toString();
  }
}
