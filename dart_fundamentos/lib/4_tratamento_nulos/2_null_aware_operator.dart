String? nome;

void main() {
  //?? > se for nulo usa tal coisa, se não usa a propria variavel
  var sobrenome = "Kolling";
  var nomeCompleto = (nome ?? "Gabriel") + sobrenome;
  String? nomeCompleto2 = null;
  print(nomeCompleto2 ?? "Gabriel Kolling");
}
