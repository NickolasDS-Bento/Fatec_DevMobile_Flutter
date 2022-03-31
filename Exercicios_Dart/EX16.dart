/*16. Armazenar dez números na memória do computador. Exibir os valores na ordem inversa à da digitação.*/
void main() {
  var Carro c1 = Carro("Fusca");
  var Carro c2 = Carro("Brasilia");
  var Carro c3 = Carro("Chevete");
  
  final carros = [c1, c2, c3];
//   carros.add(c1);
//   carros.add(c2);
//   carros.add(c3);
  
  print("Lista: $carros, length: ${carros.length}");

  // Looping com For Each
  for(Carro c in carros) {
    print(" Carro: ${c.nome}");
  }

  // Looping com For Convencional
  for(int i=0; i<=2; i++) {
    print(" Carro: ${carros[i].nome}");
  }
}
