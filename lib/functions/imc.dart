double calcImc(double weight, double height, formBool){
  return weight / (height*height);
}

String personImage(double imc){
  if(imc <= 18.5){return 'img/palito.png';} //Magreza
  if(imc > 18.5 && imc < 25){return 'img/normal_body.jpg';} //Normal
  if(imc > 24.9 && imc < 30){return 'img/homer.png';} //Sobrepeso
  if(imc > 29.9 && imc < 40){return 'img/fat_donald.jpg';} //Obesidade
  if(imc >= 40){return 'img/superFat_spider_man.jpg';} //Obesidade grau III
  return 'img/palito.png';
}

String personHealthy(double imc){
  if(imc <= 18.5){return 'Magreza';} //Magreza
  if(imc > 18.5 && imc < 25){return 'Normal';} //Normal
  if(imc > 24.9 && imc < 30){return 'Sobrepeso';} //Sobrepeso
  if(imc > 29.9 && imc < 40){return 'Obesidade';} //Obesidade
  if(imc >= 40){return 'Obesidade grau III';} //Obesidade grau III
  return 'Não especificado';
}