void main() {
/*
 A partir de três valores que serão digitados, verificar se formam ou não um triângulo. 
 Em caso positivo, exibir sua classificação: “Isósceles, escaleno ou eqüilátero”.
 Um triângulo escaleno possui todos os lados diferentes, o isósceles, dois lados iguais e o eqüilátero, todos os lados iguais.
 Para existir triângulo é necessário que a soma de dois lados quaisquer seja maior que o outro, isto, para os três lados
*/
  int a = 5;
  int b = 5;
  int c = 3;

  int somalados = (b + c);

  if (a < somalados) {
    somalados = (a + b);
    if (c < somalados) {
      if ((a == b) && (a != c)) {
        print("os valores digitados formam um triângulo isoceles");
      } else if ((b == c) && (b != a)) {
        print("os valores digitados formam um triângulo isoceles");
      } else if ((c == a) && (b != c)) {
        print("os valores digitados formam um triângulo isoceles");
      }

      if ((a == b) && (b == c) && (a == c)) {
        print("os valores digitados formam um triângulo equilátero");
      }
      if ((a != b) && (a != c) && (b != c)) {
        print("os valores digitados formam um triângulo escaleno");
      }
    }
  } else {
    print("Os valores informados não foram um triagulo");
  }
}
