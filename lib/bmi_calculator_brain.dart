import 'dart:math';
class BmiBrain{

  BmiBrain({this.height, this.weight});
  final int weight;
  final int height;
  double  _bmi;

  String calculateBMI(){
   _bmi= weight/pow(height/100, 2);
   return _bmi.toStringAsFixed(1);
 }

 String getResult(){
   if(_bmi>=25){
     return 'Overweight';
   }
   else if ( _bmi>18.5){
     return 'Normal';
   }
   else{
     return 'Underweight';
   }
 }
  String getInterpretation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to excercise more.';

    }
    else if ( _bmi>18.5){
      return 'You have Normal weight. Good job!';
    }
    else{
      return 'You have a lower  than normal body weight. you should eat more.';
    }
  }

}