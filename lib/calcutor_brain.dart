import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height, this.weight});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI(){
     _bmi = weight / pow(height  , 2) ;
    return _bmi.toStringAsFixed(1);
  }

  String getResults(){
    if (_bmi > 25){
      return 'Overweight';
    } else if (_bmi >18.5){
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation(){
    if (_bmi > 25){
      return 'You have a higher than normal body weight, ';
    } else if (_bmi >18.5){
      return 'Congrats you are in the normal body weight percentile. ';
    } else {
      return 'You have lower than normal body weight. ';
    }
  }

}

