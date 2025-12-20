import 'dart:io';
void main () {
  List<String> notas = <String>[];
  menu(notas);
}

String getComando() {
  print("Digita o comando desejado: 1 - Add 2 - List 3 - Exit");
  List<String> comando = <String>["1", "2", "3"];
  String? entrada = "";
  
  entrada = stdin.readLineSync();

  if (entrada == null || !comando.contains(entrada)) {
    print("Comando inválido, tente novamente.");
    getComando();
  }

  return entrada!;
}

List<String> addNote(List<String> notas) {

  print("Digite a nota que deseja adicionar:");
  String? nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print("Nota inválida, tente novamente.");
    addNote(notas);
  } else {
    notas.add(nota);
  }   
  return notas;
}

void listNote(List<String> notas){
  for (var i = 0; i < notas.length; i++){
    print(notas[i]);
  }
}

void menu(List<String> notas){
  String comando = getComando();

  switch(comando){
    case "1":
      addNote(notas);
      menu(notas);
      
    case "2":
      listNote(notas);
      menu(notas);
      
    case "3":
      print("Saindo...");
      break;        
  }
}