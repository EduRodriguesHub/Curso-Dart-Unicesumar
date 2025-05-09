//AQUI O OBJETIVO É APRENDER CLASSES ABSTRATAS
void main(){
  Pagamento credito = CartaoDeCredito();
  Pagamento boleto = Boleto();

  credito.processarPagamento();
  boleto.processarPagamento();
}

abstract class Pagamento {
  void processarPagamento();

}

class CartaoDeCredito extends Pagamento{
  @override
  void processarPagamento() {
    print('Processando pagamento por cartão de crédito');
  }
}
class Boleto extends Pagamento{
  @override
  void processarPagamento(){
    print('Processando pagamento por boleto');
  }
}