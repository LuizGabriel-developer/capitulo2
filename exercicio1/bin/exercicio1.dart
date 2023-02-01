import 'dart:io';
void main() {
  var nota1, nota2, nota3, media, recuperacao;

  print("Informe as 3 notas do aluno:");
  nota1 = double.parse(stdin.readLineSync()!);
  nota2 = double.parse(stdin.readLineSync()!);
  nota3 = double.parse(stdin.readLineSync()!);

  media = (nota1 * 2 + nota2 * 3 + nota3 * 5) / 10;

  if (media >= 6) {
    print("Aluno aprovado com média: $media");
  } else if (media < 4) {
    print("Aluno reprovado com média: $media");
  } else {
    print("Aluno em recuperação com média: $media \nInforme a nota da recuperação:");
    recuperacao = double.parse(stdin.readLineSync()!);
    media = (media + recuperacao) / 2;
    if (media < 5.5) {
      print("Aluno reprovado! na recuperação com média final $media");
    } else {
      print("Aluno aprovado! na recuperação com média final $media");
    }
  }
}

