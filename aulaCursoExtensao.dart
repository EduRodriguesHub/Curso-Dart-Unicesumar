void main() {
  int idade = 18;
  double altura = 1.83;
  String nome = 'Eduardo';
  bool isAluno = true;
  print('Nome: $nome - Idade: $idade - É aluno: $isAluno - Altura $altura');
  saudacao();
  int resultado = somar();
  print('Função simples: $resultado');
  int resultEntrada = somarEntrada(45, 7);
  print('Função com entrada: $resultEntrada');
  saudacaoPessoa('Carlos', 'Gomes');
  
  saudacaoPessoaNomeada(nome: 'José', sobreNome: 'Carlos', idade: 45);
  
  // Função anônima
  var somarAnonima = (int a, int b) => a + b;
  
  print('Anonima: ${somarAnonima(15, 45)}');
  
  List<int> numeros = [1, 2, 3, 4];
  numeros.forEach((numero) {
      print(numero * 2);
  });
  
  //Listas:
  List<int> lista = [1, 2, 3, 4];
  List<String> frutas = ['banana', 'maçã', 'uva', 'laranja'];

  print(lista.length);
  
  //Operadores comuns com listas
  print(frutas[1]);

  /*1º - Acessar os elementos |2º - Adicionar elemento | 3º Remover elemento | Verifiar o tamanho da lista*/
  //1º Acessando os elementos
  print(numeros[3]); // Deve imprimir 4
  print(frutas[0]); // Deve imprimir Banana
  print('******************');
  print('Lista de frutas');
  print('******************');
  frutas.forEach((fruta) {
    print('Fruta: $fruta');
  });
  print('');
  print('');
  print('tamanho da lista antes de inserir: ${frutas.length}');
  //2º Adicionando elemento na lista
  print('******************');
  print('Adicionando fruta na lista');
  print('******************');  
  frutas.add('Abacaxi');
  frutas.forEach((fruta) {
    print('Fruta: $fruta');
  });
  print(''); 
  print('');
   print('tamanho da lista depois de inserir: ${frutas.length}');
  //3º Removendo elemento da lista
  print('******************');
  print('Removendo fruta da lista');
  print('******************');  
  frutas.remove('Laranja');
  frutas.removeAt(3);
  frutas.forEach((fruta) {
    print('Fruta: $fruta');
  });
  print(''); 
  print('');  
   print('tamanho da lista depois de dois remove: ${frutas.length}');

  print('Primeiro item da lista: ${frutas.first}'); // Deve imprimir o primeiro item da lista
  print('Ultimo item da lista: ${frutas.last}'); // Deve imprimir o Ultimo item da lista
}
 
void saudacao() {
  print('Olá, bem-vindo!');
}
 
int somar(){
  return 15 + 9;
}
 
int somarEntrada(int a, int b) {
  return a + b;
}
 
// Função com parâmetro opcional
void saudacaoPessoa(String nome, String sobreNome, [int idade = 18]) {
  print('Olá: $nome $sobreNome, você tem $idade anos');
}
 
// Função com parâmetro nomeados
void saudacaoPessoaNomeada({String nome = 'Não informado', String sobreNome = 'Não informado',int idade = 0}) {
  print('Olá: $nome, você tem $idade anos');

}