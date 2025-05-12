void main(){
  SistemaDeTransporte sistema = SistemaDeTransporte();
  
  Carro carro = Carro('Fiat','Palio');
  Caminhao caminhao = Caminhao('Volvo', 'Volvo FH');
  
  Funcionario funcionario = Funcionario(nome: 'Eduardo', salario: 3500);
  
  sistema.adicionarVeiculo(carro);
  sistema.adicionarVeiculo(caminhao);
  sistema.adicionarFuncionario(funcionario);
  
  sistema.exibirFrota();
  sistema.contarVeiculos();
  
  sistema.exibirFuncionario();
}

abstract class Veiculo{
  String marca;
  String modelo;
  
  void acelerar();
  
  Veiculo(this.marca, this.modelo);
  
  void mostrarDetalhes(String marca, String modelo){
    print(marca);
    print(modelo);
  }
}

class Carro extends Veiculo{
  Carro(String marca, String modelo): super(marca, modelo);
  @override
  void acelerar(){
    print('O carro está acelerando a 100 km/h');
  }
  @override
  void mostrarDetalhes(String marca,String modelo){
    print('$modelo | $marca');
  }
  
}
class Caminhao extends Veiculo{
  Caminhao (String marca, String modelo): super(marca, modelo);
  @override
  void acelerar(){
    print('O caminhão está acelerando a 80 km/h');
  }
  @override
  void mostrarDetalhes(String marca, String modelo){
    print('$modelo | $marca');
  }
}

class Frota{
   static int totalVeiculos = 0;
  
  Frota(){
    totalVeiculos++;
  }
  
  static void mostrarTotalDeVeiculos(){
    print('O total de veículos na frota são: $totalVeiculos');
  }
  
  
}

class Funcionario{
  final String nome;
  final double salario;
  
  Funcionario({required this. nome, required this.salario});
  
  void exibirFuncionario(){
    print('Funcionario $nome tem o salario de: R\$${salario.toStringAsFixed(2)}');
  }
}

abstract interface class VeiculoComunicacao{
  void comunicar();
}

class CarroComunicacao implements VeiculoComunicacao{
  @override
  void comunicar(){
    print('O carro está enviando sinais de comunicação.');
  }
}
class CaminhaoComunicacao implements VeiculoComunicacao{
  @override
  void comunicar(){
    print('O caminhão está enviando sinais de comunicação.');
  }
}

class SistemaDeTransporte{
  List<Veiculo> frotas = [];
  List<Funcionario> funcionarios = [];
  
  void adicionarVeiculo(Veiculo veiculo){
    frotas.add(veiculo);
    Frota();
  }
  void adicionarFuncionario(Funcionario funcionario){
    funcionarios.add(funcionario);
  }
  void exibirFrota(){
  for(Veiculo veiculo in frotas){
    print('Marca: ${veiculo.marca} | Modelo: ${veiculo.modelo}');
  }
}
  void contarVeiculos(){
    Frota.mostrarTotalDeVeiculos();
  }
  void exibirFuncionario(){
    for(Funcionario funcionario in funcionarios){
      funcionario.exibirFuncionario();
    }
  }
}