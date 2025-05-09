void main(){
  Funcionario funcionario = Funcionario(nome: 'Eduardo', idade: 18, salario: 3000.12, contaAtiva: true);


  print(funcionario.nome);
  funcionario.nome = 'Guilherme';
  print(funcionario.idade);
  print(funcionario.salario);
  print(funcionario.contaAtiva);
}
class Funcionario{
  String _nome;
  int _idade;
  double _salario;
  bool _contaAtiva;

  String get nome => _nome;
  set nome(String nome){
    _nome = nome;
  }

  int get idade => _idade;
  double get salario => _salario;
  bool get contaAtiva => _contaAtiva;

  Funcionario({required nome, required idade, required salario, required contaAtiva})
      : _nome = nome,
        _idade = idade,
        _salario = salario,
        _contaAtiva = contaAtiva;
}