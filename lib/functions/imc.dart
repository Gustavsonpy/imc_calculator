double calcImc(double weight, double height, formBool){
  return weight / (height*height);
}

String personImage(double imc){
  if(imc <= 18.5){return 'img/palito.png';} //Magreza
  if(imc > 18.5 && imc < 25){return 'img/normal_body.jpg';} //Normal
  if(imc > 24.9 && imc < 30){return 'img/homer.png';} //Sobrepeso
  if(imc > 29.9 && imc < 40){return 'img/fat_donald.jpg';} //Obesidade
  if(imc >= 40){return 'img/fat_mayor.png';} //Obesidade grau III
  return 'img/palito.png';
}

String personHealthy(double imc){
  if(imc <= 18.5){return 'Thinness';} //Magreza
  if(imc > 18.5 && imc < 25){return 'Normal';} //Normal
  if(imc > 24.9 && imc < 30){return 'Overweight';} //Sobrepeso
  if(imc > 29.9 && imc < 40){return 'Obesity';} //Obesidade
  if(imc >= 40){return 'Grade III obesity';} //Obesidade grau III
  return 'Not specified';
}