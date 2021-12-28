import 'package:flutter/material.dart';
import 'dart:math';

void variablePlaygroung(){
  //basicTypes();
  //untypedVariables();
  //typeInterpolation();
  //immutableVariables();
}

//tipos basicos
void basicTypes(){
  int numeroInteiro = 4;
  double pi = 3.14;
  num numeroQualquer = 254863;
  bool verdadeiro = true;
  bool falso = false;
  int numeroSemAtribuicao = 0;

  print('Imprimindo os tipos basicos: \n'
      'inteiro: $numeroInteiro \n'
      'double: $pi \n'
      'num: $numeroQualquer \n'
      'bool: $verdadeiro \n'
      'bool: $falso \n'
      'int: $numeroSemAtribuicao \n');
}

void untypedVariables() {
  dynamic something = 14.2;
  print(something.runtimeType); //outputs 'double'
}

void typeInterpolation() {
  var anInteger = 15;
  var aDouble = 27.6;
  var aBoolean = false;
  print(anInteger.runtimeType);
  print(anInteger);
  print(aDouble.runtimeType);
  print(aDouble);
  print(aBoolean.runtimeType);
  print(aBoolean);
}

//Dart has two keywords that can be used to indicate immutability
void immutableVariables() {
  final int immutableInteger = 5; //isso aqui é o mesmo
  final double immutableDouble = 0.015;
// Type annotation is optional
  final interpolatedInteger = 10; // que isso aqui
  final interpolatedDouble = 72.8;
  /*
  * FICA OPCIONAL ADICIONAR O TIPO DA VARIAVEL DEPOIS DO FINAL
  * */


  print(interpolatedInteger);
  print(interpolatedDouble);

  const aFullySealedVariable = true;
  print(aFullySealedVariable);

  const testeConstanteInt = 4;
  print(testeConstanteInt);
}

void stringPlayground() {
  //basicStringDeclaration();
  //multiLineStrings();
  combiningStrings();
}

void basicStringDeclaration() {

  // With Single Quotes
  print('Single quotes');
  final aBoldStatement = 'Dart isn\'t loosely typed.';
  print(aBoldStatement);

  // With Double Quotes
  print("Hello, World");
  final aMoreMildOpinion = "Dart's popularity has skyrocketed with Flutter!";
  print(aMoreMildOpinion);

  // Combining single and double quotes
  final mixAndMatch =
      'Every programmer should write "Hello, World" when learning a new language.';
  print(mixAndMatch);
}

void multiLineStrings() {
  final withEscaping = 'One Fish\nTwo Fish\nRed Fish\nBlue Fish';
  print(withEscaping);
  final hamlet = '''
To be, or not to be, that is the question:
Whether 'tis nobler in the mind to suffer
The slings and arrows of outrageous fortune,
Or to take arms against a sea of troubles
And by opposing end them.
''';
  print(hamlet);
}

void combiningStrings() {
  traditionalConcatenation();
  modernInterpolation();
}
void traditionalConcatenation() {
  final hello = 'Hello';
  final world = "world";
  final combined = hello + ' ' + world;
  print(combined);

  String primeiroNome = 'Samuel';
  String ultimoNome = 'Farias';
  int idade = 29;

  print(primeiroNome + ' ' + ultimoNome + ' tem $idade anos de idade');

}
void modernInterpolation() {
  final year = 2011;
  final interpolated = 'Dart was announced in $year.';
  print(interpolated);
  final age = 35;
  final howOld = 'I am $age ${age == 1 ? 'year' : 'years'} old.';
  print(howOld);
}




//criando apenas para executar alguns comando em DART
void main() {

  //Declaring variables – var versus final versus const
  //variablePlaygroung();

  //Strings
  //stringPlayground();

  /*List fruits = ['Strawberry', 'Coconut', 'Orange', 'Mango', 'Apple'];
  StringBuffer buffer = StringBuffer();
  for (String fruit in fruits) {
    buffer.write(fruit);
    buffer.write(' ');
    print(fruit);
  }
  print (buffer.toString());*/

  print(somaDoisNumeros());
  somaNumeros(30, 60, 'Samuel');
  print(parametrosOpicionais(29));
  print(parametrosOpicionais(29, 35));
  print(parametrosOpicionaisChaves(54));
  print(parametrosOpicionaisChaves(54, numero02: 54));
  
  //printando o quadrado do numero
  final numeroQuadrado = quadradoNumero(5);
  print('Quadrado de um numero: $numeroQuadrado');
  print(quadradoNumero(6));
  
}

//How to write functions

//com retorno
int somaDoisNumeros(){
  int num01 = 3;
  int num02 = 3;
  return num01 + num02;
}

//sem retorno e com parametros obrigatorios
void somaNumeros(int numero01, int numero02, String nome){
  int soma = numero01 + numero02;
  print('O usuario ' + nome + ' deve uma soma de $soma');
}

int parametrosOpicionais(int numero01, [int? numero02]){
  if(numero02 != null){
    return numero01+numero02;
  }else{
    return numero01;
  }
}

int parametrosOpicionaisChaves(int numero01, {int? numero02 = 20}){
  if(numero02 != null){
    return numero01+numero02;
  }
  else{
    return numero01;
  }
}

quadradoNumero(int numero) => pow(numero, 2);


/*
  Creating classes and using the class constructor shorthand
 */

//STOP -> os estudos sobre class estão no arquivo cap02_classes.dart














