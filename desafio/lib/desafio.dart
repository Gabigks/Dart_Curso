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
  print('Pacientes com mais de 20 anos:');
  var listaPacientes = <String>[];
  for (final paciente in pacientes) {
    listaPacientes = paciente.split('|').toList();
    if (int.parse(listaPacientes[1]) > 20) {
      print(listaPacientes[0]);
    }
  }
  int dev = 0, est = 0, dent = 0, jorn = 0;
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  for (final paciente in pacientes) {
    listaPacientes = paciente.split('|').toList();
    if (listaPacientes[2].toLowerCase() == 'desenvolvedor') {
      dev++;
    } else if (listaPacientes[2].toLowerCase() == 'estudante') {
      est++;
    } else if (listaPacientes[2].toLowerCase() == 'dentista') {
      dent++;
    } else {
      jorn++;
    }
  }
  print('Total de pacientes Desenvolvedores: $dev');
  print('Total de pacientes Estudantes: $est');
  print('Total de pacientes Dentistas: $dent');
  print('Total de pacientes Jornalistas: $jorn');

  //! 3 - Apresente a quantidade de pacientes que moram em SP
  int sp = 0;
  for (final paciente in pacientes) {
    listaPacientes = paciente.split('|').toList();
    if (listaPacientes[3].toUpperCase() == 'SP') {
      sp++;
    }
  }
  print('Total de pacientes que residem em São Paulo: $sp');
}
