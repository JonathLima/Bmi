import 'dart:io';

main(){
bmi();

}

bmi(){
  print("=== Enter your weight ===");
  String textWeight = stdin.readLineSync() ?? "";
  int weight = int.parse(textWeight);

  print("=== Enter your height ===");
  String textHeight = stdin.readLineSync() ?? "";
  double height = double.parse(textHeight);

  double bmi = calcBmi(weight, height);

  resultBmi(bmi);
  
}

double calcBmi(int weight, double height){
  return weight / (height * height); // using to calculate bmi
}

resultBmi(double bmi){

  print("====================");

   if(bmi < 18.5){
      print("Underweight");
    } else if(bmi > 18.5 && bmi < 24.9){
        print("Normal");
    } else if (bmi > 25 && bmi < 29.9){
        print("Overweight");
    } else if (bmi > 30 && bmi < 34.9){
        print("Obese I");
    } else if (bmi > 35 && bmi < 39.9){
        print("Obese II");
      }else{
        print("Extremely obese");
  }
}