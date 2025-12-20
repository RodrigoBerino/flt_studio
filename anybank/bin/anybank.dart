import '../lib/conta.dart';
void main () {
//  Conta contaMatheus = Conta("Matheus", 1000);
//  Conta contaRoberta = Conta("Roberta", 1000);
  ContaCorrente contaJose = ContaCorrente("Jose", 500);
  ContaPoupanca contaAna = ContaPoupanca("Ana", 500);
  ContaEmpresa contaDem = ContaEmpresa("Dem", 10000);
  contaInvestimento contaInv = contaInvestimento("Investimento", 2000);

//  List <Conta> contas = <Conta> [contaMatheus, contaRoberta, contaJose, contaAna];

/*   for(Conta conta in contas){
    conta.extrato();
  } 
  contaRoberta.receber(5000);
  contaRoberta.enviarValor(500);*/

  contaAna.extrato();
  contaAna.receber(2000);
  contaAna.calcRendimento();

  contaJose.enviarValor(700);

  contaJose.extrato();

  contaDem.enviarValor(1500);
  contaInv.receber(1500);
}



/* void main (){
  Receita receitaMacarrao = Receita("macarrao", 20.00);
  Receita receitaLasa = Receita("lasa", 32.00);
  Receita receitaPesto = Receita("pesto", 40.00);  
  List<Receita> cardapio = <Receita> [receitaMacarrao, receitaLasa, receitaPesto];

  for (Receita item in cardapio){
    print(item.nome);
    print(item.preco);
  }

}

class Receita{
  String nome;
  double preco;
  
  Receita(this.nome, this.preco);
} */