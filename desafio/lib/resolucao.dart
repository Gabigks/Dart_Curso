void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];
  //!Baseado no array acima monte um relatório onde:

  //! 1 - Apresente os pacientes com mais de 20 anos e printe o nome deles
  print('1 - Apresente os pacientes com mais de 20 anos e printe o nome deles');
  for (final paciente in pacientes) {
    final pacienteDados = paciente.split('|');
    final idade = int.tryParse(pacienteDados[1]) ?? 0;
    if (idade > 20) {
      print(pacienteDados[0]);
    }
  }
  print('');

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  final dev = [];
  final est = [];
  final den = [];
  final jor = [];

  for (final paciente in pacientes) {
    final pacienteDados = paciente.split('|');
    final profissao = pacienteDados[2].toLowerCase();
    final nome = pacienteDados[0];

    if (profissao == 'desenvolvedor') {
      dev.add(nome);
    }
    if (profissao == 'estudante') {
      est.add(nome);
    }
    if (profissao == 'dentista') {
      den.add(nome);
    }
    if (profissao == 'jornalista') {
      jor.add(nome);
    }
  }
  print('2 - Apresente quantos pacientes existem para cada profissão');
  print('Total de Desenvolvedores: ${dev.length}, que se chamam:');
  dev.forEach(print);

  print('Total de Desenvolvedores: ${est.length}, que se chamam:');
  est.forEach(print);

  print('Total de Desenvolvedores: ${den.length}, que se chamam:');
  den.forEach(print);

  print('Total de Desenvolvedores: ${jor.length}, que se chamam:');
  jor.forEach(print);

  print('');
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  final sp = [];
  for (final paciente in pacientes) {
    final pacienteDados = paciente.split('|');
    final estados = pacienteDados[3].toUpperCase();
    final nome = pacienteDados[0];
    if (estados == 'SP') {
      sp.add(nome);
    }
  }

  print('3 - Apresente a quantidade de pacientes que moram em SP');
  print('Toral de moradores de SP: ${sp.length}, que se chamam:');
  sp.forEach(print);
}
