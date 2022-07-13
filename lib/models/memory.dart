class Memory {
  String _value = '0';

  void aplicarComando(String command) {
    if (command == 'AC') {
      limparTudo();
    } else {
      _value += command;
    }
  }

  void limparTudo() {
    _value = '0';
  }

  String get value {
    return _value;
  }
}
