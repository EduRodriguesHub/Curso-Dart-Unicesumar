void main(){
  Produto produto = Produto(nome: 'Mouse', preco: 89.99, quantidadeEstoque: 30);
  print('_________________');
  print(produto.nome);
  print(produto.preco);
  print(produto.quantidadeEstoque);
  print('');
  print('_________________');
  produto.nome = '';
  print(produto.nome);
  print('');
  print('_________________');
  produto.preco = -4.6;
  print(produto.preco);
  print('');
  print('_________________');
  produto.quantidadeEstoque = -6;
  print(produto.quantidadeEstoque);


}

class Produto{
  String _nome;
  double _preco;
  int _quantidadeEstoque;

  Produto({required nome, required preco, required quantidadeEstoque})
  :_nome = nome, 
  _preco = preco, 
  _quantidadeEstoque = quantidadeEstoque;

  String get nome => _nome;
  set nome(String nome){
    if(nome == ''){
      print('Nome inválido');
    }else{
      _nome = nome;
    }
  }
  double get preco => _preco;
  set preco(double preco){
    if(preco < 0){
      print('Preço inválido!');
    }else{
      _preco = preco;
    }
  }
  int get quantidadeEstoque => _quantidadeEstoque;
  set quantidadeEstoque(int quantidadeEstoque){
    if(quantidadeEstoque < 0){
      print('Quantidade inválida!');
    }else{
      _quantidadeEstoque = quantidadeEstoque;
    }
  }



}