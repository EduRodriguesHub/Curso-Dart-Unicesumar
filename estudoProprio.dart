void main() {
  List<Cliente> clientes = [];

  cadastrarCliente(clientes, nome: 'Eduardo', idade: 18, tipoCliente: 'antigo');
  cadastrarCliente(clientes, nome: 'Ana', idade: 17, tipoCliente: 'novo'); // Menor de idade
  cadastrarCliente(clientes, nome: 'Joana', idade: 25, tipoCliente: 'novo');
  
  ClienteVIP vip = ClienteVIP(
    nome: 'Carlos',
    idade: 30,
    tipoCliente: 'antigo',
    beneficioVIP: 'Área VIP e desconto de 20%',
  );
  clientes.add(vip);

  print('\n--- Lista de Clientes Cadastrados ---');
  for (var cliente in clientes) {
    cliente.exibirNome();
    cliente.verificarIdade();
    cliente.calcularDesconto();
    if (cliente is ClienteVIP) {
      cliente.exibirBeneficio();
    }
    print('---------------------');
  }

  //aqui, é mudado o tipo de cliente
  clientes[0].tipoCliente = 'novo';
  print('Novo tipo do ${clientes[0].nome}: ${clientes[0].tipoCliente}');
}

void cadastrarCliente(List<Cliente> clientes, {required String nome, required int idade, required String tipoCliente}) {
  print('\nCadastrando cliente: $nome');
  
  if (idade < 18) {
    print('Cliente menor de idade, não pode cadastrar.');
    return;
  }

  if (tipoCliente == 'novo') {
    print('Bem-vindo, $nome, seu cadastro foi realizado com sucesso!');
  } else {
    print('Bem-vindo de volta, $nome! Aproveite seu desconto de 10%.');
  }

  clientes.add(Cliente(nome: nome, idade: idade, tipoCliente: tipoCliente));
}

class Cliente {
  String _nome;
  int _idade;
  String _tipoCliente;

  Cliente({
    required String nome,
    required int idade,
    required String tipoCliente,
  })  : _nome = nome,
        _idade = idade,
        _tipoCliente = tipoCliente;

  // Getters e Setters
  String get nome => _nome;
  int get idade => _idade;
  String get tipoCliente => _tipoCliente;

  set nome(String novoNome) => _nome = novoNome;
  set idade(int novaIdade) => _idade = novaIdade;
  set tipoCliente(String novoTipo) => _tipoCliente = novoTipo;

  void exibirNome() {
    print('Nome: $_nome');
  }

  void verificarIdade() {
    print('Idade: $_idade - ${_idade >= 18 ? "Maior" : "Menor"} de idade');
  }

  void calcularDesconto() {
    print('Tipo: $_tipoCliente - ${_tipoCliente == 'antigo' ? "Desconto de 10%" : "Sem desconto"}');
  }
}

class ClienteVIP extends Cliente {
  String beneficioVIP;

  ClienteVIP({
    required String nome,
    required int idade,
    required String tipoCliente,
    required this.beneficioVIP,
  }) : super(nome: nome, idade: idade, tipoCliente: tipoCliente);

  void exibirBeneficio() {
    print('Benefício VIP: $beneficioVIP');
  }
}