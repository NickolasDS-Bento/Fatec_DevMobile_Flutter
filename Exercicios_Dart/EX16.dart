/* 16. Armazenar dez números na memória do computador. 
 * Exibir os valores na ordem inversa à da digitação.*/

void main() {
  Numero n1 = Numero(2);
  Numero n2 = Numero(2);
  Numero n3 = Numero(3);
  Numero n4 = Numero(10);
  Numero n5 = Numero(5);
  Numero n6 = Numero(6);
  Numero n7 = Numero(7);
  Numero n8 = Numero(8);
  Numero n9 = Numero(9);
  Numero n10 = Numero(20);

  final numeros = [n1, n2, n3, n4, n5, n6, n7, n8, n9, n10];

  // Looping com For Convencional
  for (int i = 9; i >= 0; i--) {
    print(" Numero: ${numeros[i].nome}");
  }
}

class Numero {
  int nome;
  Numero(this.nome);
}
