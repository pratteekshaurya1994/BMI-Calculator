import 'dart:math';
import 'package:bmi_calculator/Screens/input_page.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.selecteddGender});

  final int height;
  final int weight;
  final Gender selecteddGender;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30 && selecteddGender == Gender.male) {
      return 'Obese';
    } else if (_bmi > 25 && selecteddGender == Gender.male) {
      return 'Overweight';
    } else if (_bmi > 18.5 && selecteddGender == Gender.male) {
      return 'normal';
    } else if (_bmi < 18.5 && selecteddGender == Gender.male) {
      return 'underweight';
    } else if (_bmi >= 30 && selecteddGender == Gender.female) {
      return 'Obese';
    } else if (_bmi > 25 && selecteddGender == Gender.female) {
      return 'Overweight';
    } else if (_bmi > 18.5 && selecteddGender == Gender.female) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30 && selecteddGender == Gender.male) {
      return 'Your BMI is too high';
    } else if (_bmi > 25 && selecteddGender == Gender.male) {
      return 'You have higher than normal BMI';
    } else if (_bmi > 18.5 && selecteddGender == Gender.male) {
      return 'Your BMI is normal';
    } else if (_bmi < 18.5 && selecteddGender == Gender.male) {
      return 'Your BMI is lower than normal';
    } else if (_bmi >= 30 && selecteddGender == Gender.female) {
      return 'Your BMI is too high';
    } else if (_bmi > 25 && selecteddGender == Gender.female) {
      return 'You have higher than normal BMI';
    } else if (_bmi > 18.5 && selecteddGender == Gender.female) {
      return 'Your BMI is normal';
    } else {
      return 'Your BMI is lower than normal';
    }
  }
}
