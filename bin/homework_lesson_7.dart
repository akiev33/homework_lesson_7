import 'dart:async';

import 'package:homework_lesson_7/homework_lesson_7.dart' as homework_lesson_7;

void main() {
  //1
  print('Квадрат числа ${double_number(22)}');
  //2
  print('Сумма ${double_amount(10, 10)}');
  //3
  print(third_objects(10, 5, 2));
  //4
  print('${stopwatch(1)} секунд');
  //5
  print(list());
  //6
  examination();
  //7
  print(zero(22));
  //8
  print(massive());
}

//1
// квадрат входящего числа
double double_number(double first_number) => first_number * first_number;
//2
// сумма двух входящих чисел
double double_amount(double first, double second) => first + second;
//3
//первые два числа складываются и деляться на третье число 
double third_objects(
        double first_objects, double second_objects, double third_objects) =>
    (first_objects - second_objects) / third_objects;
//4
// входящее число в виде минуты, преобразовывается в секунды
double stopwatch(int minute) => minute * 60;

//5
// вернуть 1 элемент массива
int list() {
  List<int> array = [1, 3, 4, 5, 6];
  return array[0];
}

//6
//если будет true сработает if, иначе все else, по умолчанию false 
bool? examination([bool objects = false]) {
  if (objects == true) {
    print('Переменная имеет значение $objects');
  } else {
    print('Переменная имеет значение $objects');
  }
}

//7
// взодящее число меньше или равно нулю, возвращает true
//иначе else  
bool? zero(double number, {bool exam = false}) {
  if (number <= 0) {
    return exam = true;
  } else {
    return exam = false;
  }
}

//8
// определить есть  ли в массиве повторные значения
bool massive() {
  List<int> list1 = [1, 2, 3, 4, 5, 6, 7, 5];
  int previus = 0;
  bool is_contains = false;
// сортировка по возрастанию
  list1.sort((a, b) => a.compareTo(b));

  for (var i in list1) {
    if (i == previus) {
      is_contains = true;
    }
    previus = i;
  }
  return is_contains;
}
