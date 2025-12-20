import 'dart:io';

void main () {
  int num1 = 0;
  int num2 = 0;
  String operacao = "";
  List<String> operacoes = <String>['soma', 'subtração', 'divisão', 'multiplicação'];
  String? entrada = "";

 /*  print( num1 + num2 ); */

  void soma () { //function de escopo fechado
    print( num1 + num2 );
  }

  void subtracao () {
    print( num1 - num2 );
  }

  void divisao () {
    print( num1 / num2 );
  }

  void multiplicacao () {
    print( num1 * num2 );
  }

void calcular() {
switch (operacao){
  case '+' or 'soma':
    soma();
    break;
  case '-' or 'subtração':
    subtracao();
    break;
  case '/' or 'divisão':
    divisao();
    break;
  case '*' or 'multiplicação':
    multiplicacao();
    break;
  default:
    print("erro!");
  }
}

/*   print("Operação: + - / * ");
  var escolha =  stdin.readLineSync();
  if (escolha == '+') {
    soma();
  } else if (escolha == '-') {
    subtracao(); 
  } else if (escolha == '/') {
    divisao();
  } else if (escolha == '*') {
    multiplicacao();
  } else if (escolha == '') {
    print("erro!");
  } */

void getOperacao (){
  print("Escolha a operação: ${operacoes.toString()}");
  entrada = stdin.readLineSync();
  if (entrada != null){
   if (operacoes.contains(entrada)){
    operacao = entrada!;
   } else {
    print(" Operação inválida ");
    getOperacao();
   }
 }
} 

print("Valor 1: ");

entrada = stdin.readLineSync();
if (entrada != null){
  if (entrada != "") {
    num1 = int.parse(entrada!);
  }
}

getOperacao();

print("Valor 2: ");

entrada = stdin.readLineSync();
if (entrada != null){
  if (entrada != "") {
    num1 = int.parse(entrada!);
  }
}

print("Resultado: ");
calcular();

}