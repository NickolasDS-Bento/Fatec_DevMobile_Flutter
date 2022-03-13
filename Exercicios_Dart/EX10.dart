void main() {
  
  double velini = 50;
  double acel = 10;
  double temp = 1;
  var velocidade = (velini + (acel*temp));
  
  if ( velocidade <= 40 ){
    print("Veiculo muito lento");
  }
  
  if ( (velocidade > 40) && (velocidade <= 60)){
    print("Veiculo Permitida");
  }
  
  if ( (velocidade > 60) && (velocidade <= 80)){
    print("Veiculo de cruzeiro");
  }
  
  if ((velocidade > 80) && (velocidade <= 120)){
    print("Veiculo rápido");
  }
  
  if ( velocidade > 120 ){
    print("Veiculo muito rápida");
  }
  
  
  
  }