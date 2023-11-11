import 'dart:async';
mixin Validators{
  static final regExpNome = RegExp(r'[A-Z][a-z]{2,} [A-Za-z]{1,}');
  static final regExpNumero = RegExp('^\\([0-9]{2}\\) [0-9]{5}-[0-9]{4}\$');

  final validarNome = StreamTransformer<String, String>.fromHandlers(
    handleData: (nomeDigitado, sink){
      if(regExpNome.hasMatch(nomeDigitado)){
        sink.add(nomeDigitado); 
      }
      else{
        sink.addError('Nome inválido');
      }
    }
  );

  final validarNumero = StreamTransformer<String, String>.fromHandlers(
    handleData: (numeroDigitado, sink){
      if (regExpNumero.hasMatch(numeroDigitado)){
        sink.add(numeroDigitado);
      }
      else{
        sink.addError('Número inválido');
      }
    }
  );
}