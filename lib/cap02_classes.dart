

class Nome{
  final String primeiroNome;
  final String ultimoNome;

  Nome(this.primeiroNome, this.ultimoNome);

  @override
  String toString() {
    return ' Primeiro Nome: $primeiroNome, ultimoNome: $ultimoNome';
  }
}
class NomeOficial extends Nome{
  // Private properties begin with an underscore
  final String _title;

  //o primeiro e o segundo numero serao definidos pela class mae
  NomeOficial(this._title, String primeiroNome, String sobreNome) : super(primeiroNome, sobreNome);

  @override
  String toString() {
    return '$_title.${super.toString()}';
  }

}
/*
* How to group and manipulate data with collections
*
* */
void listPlayground(){
  final List<int> numeros = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(numeros.length);
  numeros.add(29);
  print(numeros.length);
  numeros[0] = 32;
  print(numeros.length);
  print(numeros);
  for(int i in numeros){
    print(i);
  }
  numeros.addAll([99, 98, 97]);
  print(numeros);
  print('Numero 99: ${numeros[11]}');
  print('Numero 98: ${numeros[12]}');
  numeros.sort();
  print(numeros);
}
void mapPlayground() {
  final meuMap = {
    'Samuel': 29,
    'Ruanna': 29,
    'Joao':15
  };

  final nomeIdade = {
    'Neymar': 30,
    'CR7': 36,
    'Messi': 35
  };

  final meuMapChavesComTiposDiferentes = Map();

  meuMapChavesComTiposDiferentes['samuel'] = 25;
  meuMapChavesComTiposDiferentes[true] = 'Engenharia de Computação';
  meuMapChavesComTiposDiferentes[12] = 'Dezembro';
  print(meuMapChavesComTiposDiferentes);



  meuMap['jose'] = 3;
  print(meuMap);

  print(nomeIdade.keys);
  print(nomeIdade.values);

  nomeIdade['ester'] = 1;

  print(nomeIdade.keys);
  print(nomeIdade.values);

  nomeIdade.remove('ester');

  print(nomeIdade.keys);
  print(nomeIdade.values);

  nomeIdade.forEach((String nomes, int idades) {
    print('Nomes: $nomes , idade: $idades \n');
  });




}
void setPlayground() {
  final Set<String> linguagens = {'c', 'c++', 'java', 'python', 'php', 'dart'};
  print(linguagens);

  linguagens.add('c'); //nao aceita itens repetidos
  print(linguagens);

  linguagens.addAll(['c#', 'ruby']);
  print(linguagens);

  linguagens.remove('c');
  print(linguagens);

  for(int i=0; i<linguagens.length; i++){
    print(i);
  }

  for(String linguagem in linguagens){
    print(linguagem);
  }



}
//não entendi bem isso aqui, é como se o valor atribuido a variavel fosse
// o resultado de uma operacao
void collectionControlFlow() {
  final adicionar = true;
  final numerosAleatorios = [
    34, 12, 45, 65, 48, if(adicionar) ...[100, 200, 300, 400],
  ];

  final numerosDuplicados = [
    for(int numero in numerosAleatorios)
      numero*2
  ];

  print(numerosDuplicados);


}

void main(){
  NomeOficial meuNomeOficial = NomeOficial('Tecnico em T.I', 'Samuel', 'Farias');

  //neste print eu aproveito o ToString do title e o ToString da classe mae
  print(meuNomeOficial.toString());


  /*
* How to group and manipulate data with collections
*
* */
  //LIST, MAP, SET
  //listPlayground();
  //mapPlayground();
  //setPlayground();
  //collectionControlFlow();




  /*
* Writing less code with higher-order functions
*
* Create, Read, Update, and Delete (CRUD)
*
* */




}




/*
* Writing less code with higher-order functions
*
* Create, Read, Update, and Delete (CRUD)
* */






















































