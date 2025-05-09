//AQUI O OBJETIVO É APRENDER SOBRE (STATIC | FINAL)
void main(){
  print('O resultado da soma é: ${Calculardora.somar(4, 3)}');
  print('O resultado da multiplicação é: ${Calculardora.multiplicacao(4, 3)}');
  print('O valor de pi é: ${Calculardora.pi}');
}

class Calculardora{
  static final double pi = 3.14; 

  static int somar(int a, int b){
    return a + b;
  }

  static int multiplicacao(int a, int b){
    return a * b;
  }
}