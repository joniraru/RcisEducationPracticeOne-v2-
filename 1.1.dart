/*УП Практическая работа 1.1*/


/*Задание 1. Создайте коллекцию(массив) с 10 случайными числами. Выведите в консоль
номер минимального элемента*/

/* import 'dart:math';
void main() {
  List<int> mas = List.generate(10, (i) => Random().nextInt(20) + 1);
  int min = mas[0];
  int mini = 0;
  for (int i = 1; i < mas.length; i++){
    if (mas[i] < min){
    mini = i;
    min = mas[i];
    }
}
  print(mas);
  print('Номер минимального элемента - ${mini + 1}');
} */


/*Задание 2. Добавляйте новые числа в список до тех пор, пока пользователь не введет 0.
Выведите в консоль сумму и произведение всех элементов списка. Выведите средннее,
среди всех элементов списка*/

/* import 'dart:io';

void main() {
  List mas = [];
  int sum = 0;
  int mult = 1;
  double mid = 0;
  for (int i = 0; ; i++){
    stdout.write('Введите число в список = ');
    int num = int.parse(stdin.readLineSync()??'Failure');
    if(num == 0){
      break;
    }
    else{
      sum += num;
      mult *= num;
    
      mas.add(num);  
    }
    mid = sum / mas.length;
  }
  print(mas);
  print('Сумма = $sum');
  print('Произведение = $mult');
  print('Среднее = $mid');
} */


/*Задание 3. Добавляйте новые элементы в список до тех пор, пока пользователь не
отправит пустую строку. Выведите в консоль самый короткий и самый длинный элементы
списка;*/


/* import 'dart:io';

void main() {
  List mas = [];
  var num;
  String maxstr = '';
  String minstr = '';
  int max = 0;
  int min = 1000;
  for (int i = 0; ; i++){
    stdout.write('Введите элемент в список = ');
    num = stdin.readLineSync();
    if(!num.isEmpty){mas.add(num);}
    if(num.isEmpty){
      print(mas);
      for(int i = 0; i < mas.length; i++){
        if(mas[i].length > max){
          maxstr = mas[i];
          max = mas[i].length;
        }
        if(mas[i].length < min){
          minstr = mas[i];
          min = mas[i].length;
        }
      }
      print(maxstr);
      print(minstr);
      break;
    }
  }
} */

/*Задание 4. Напишите функцию, которая заполняет список случайными числами в
диапазоне, указанном пользователем. Функция принимает начало диапазона и его конец,
и возвращает целочисленный массив. С помощью специальной формы цикла for
выведете элементы получившегося массив в одну строку, с пробелами*/

/* import 'dart:io';
import 'dart:math';

void main() {
  List<int> mas = userDiap();
  for(int i = 0; i < mas.length; i++){
    stdout.write('${mas[i]} ');
  }
}

List<int> userDiap() {
  stdout.write('Введите левую границу диапозона - ');
  int diapl = int.parse(stdin.readLineSync()!);
  stdout.write('Введите правую границу диапозона - ');
  int diapr = int.parse(stdin.readLineSync()!);
  List<int> mas = List.generate(10, (i) => diapl + Random().nextInt(diapr - diapl + 1));
  return mas;
} */

/*Задание 5. В строке, которую вводит пользователь, определите количество слов,
добавьте в начало строки слово Start и в конец строки слово End;*/


/* import 'dart:io';

void main() {
  int numWord = 0;
  print('Введите строку');
  String str = stdin.readLineSync()??'Failure';
  for(int i = 0; i < str.length - 1; i++){
    if(str[i] != ' ' && str[i + 1] == ' '){
      numWord++;
      continue;
    }
  }
  if(!str.endsWith(' ')){
    numWord++;
  }
  if(str.isEmpty || str == ' '){
    stdout.write('Количество слов = 0\nStart $str End');
  }
  else
  stdout.write('Количество слов = $numWord\nStart $str End');
} */