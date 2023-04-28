void main() {
  final nome = 'Gabriel Kolling';

  var subStringNome = nome.substring(7);
  print(subStringNome);

  var subStringNome2 = nome.substring(0, 7);
  print(subStringNome2);

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0, 1);
  print(sexoSigla);
  if (sexoSigla == 'M') {
    print("Sexo Masculino");
  }
  //Ou
  if (sexo.startsWith('M')) {
    print("Sexo Masculino");
  }

  if (sexo.toLowerCase().startsWith('m')) {
    print("Sexo masculino");
  }

  if (nome.toLowerCase().contains("kolling")) {
    print("É da familia Kolling");
  }

  var primeiroNome = 'Gabriel';
  var ultimoNome = "Kolling";

  var saudacao = 'Olá ' + primeiroNome + ' ' + ultimoNome;
  print(saudacao);
  //Interpolação
  var saudacao2 = 'Olá $primeiroNome $ultimoNome';
  print(saudacao2);
  //Se quiser chamar um metodo na interpolação, usar {}
  print("Olá ${primeiroNome.toLowerCase()}");
  //É basicamente um bloco de codigo
  print("A soma de 2 + 2 é ${2 + 2}");

  var paciente = 'Gabriel Kolling|21|Especialista Dart e Flutter|SC';

  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);

  for (var dado in dadosPaciente) {
    print(dado);
  }
  dadosPaciente.forEach(print);

  var pacientes = [
    'Gabriel Kolling|21|Especialista Dart e Flutter|SC',
    'Marcela Teston|21|Linda|SC',
    'Luiz Fernando|21|Especialista Dart e Flutter|SC',
    'Joao Artur Lanches|21|Especialista Dart e Flutter|SC',
  ];

  for (var paciente in pacientes) {
    var dados = paciente.split('|');
    var nomeCompleto = dados[0];
    var ultimoNome = nomeCompleto.split(' ');
    print(ultimoNome.last);
  }
}
