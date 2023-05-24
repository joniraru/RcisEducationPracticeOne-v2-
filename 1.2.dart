/*УП Практическая работа 1.2*/


/*Задание 1. Создайте коллекцию(массив) размерностью 100. Добавьте в коллекцию числа
в убывающем порядке, каждое число меньше предыдущего на 3*/

/* void main() {
  List mas = List.generate(100, (i) =>  i * 3);
  List mas1 = List.from(mas.reversed);
  print(mas1);
} */

/*Задание 2. Заполните массив последовательными нечетными числами, начиная с 1*/

/* void main() {
  int x = -1;
  List<int> mas = List.generate(20, (i) => x = x + 2);
  print(mas);
} */

/*Задание 3. Заполните квадратную матрицу n x n так, чтобы все числа первого столбца и
первой строки равны 1, а каждое из оставшихся чисел равно сумме верхнего и левого
соседей. Выведите на экран получившеюся матрицу*/


/*import 'dart:io';
void main() {
  int n = 10;
  int m = 10;
  var matrix = List.generate(m, (i) => List.generate(n, (j) => 1));
  for (int i = 1; i < matrix.length; i++){
    for (int j = 1; j < matrix.length; j++){
      matrix[i][j] = matrix[i-1][j] + matrix[i][j-1];
      stdout.write(" ${matrix[i-1][j-1]} ");
    }
    print(" ");
  }
}*/

/*Задание 4. Напишите программу, вычисляющую среднюю температуру за год. Создайте
двумерный рандомный массив temperature 12 на 30, в котором будет храниться
температура для каждого дня месяца (предполагается, что в каждом месяце 30 дней).
Сгенерируйте значения температур случайным образом(в рамках разумного). Для
каждого месяца распечатайте среднюю температуру. Для этого напишите функцию,
которая по массиву temperature для каждого месяца вычисляет среднюю температуру в
нем, и в качестве результата возвращает массив средних температур. Полученный
массив средних температур отсортируйте по возрастанию*/

/* import 'dart:io';
import 'dart:math';
void main() {
  int tem = 12;
  int tem1 = 30;
  var temperature = List.generate(tem, (i) => List.generate(tem1, (j) => Random().nextInt(36) + 5));
  for (int i = 0; i < temperature.length; i++){
    for (int j = 0; j < temperature[i].length; j++){
      stdout.write(" ${temperature[i][j]} ");
    }
    print(" ");
  }
  print(srTem(temperature));
}

List<dynamic> srTem(List<List<int>>temperature){
  List srTem = [];
  double midTem = 0;
  for(int i = 0; i < temperature.length; i++){
    for(int j = 0; j < temperature[i].length; j++){
      midTem += temperature[i][j];
    }
    srTem.add(midTem / 30);
    midTem = 0;
  }
  srTem.sort();
  return srTem;
} */

/*Задание 5. Выполните задание 4, используя Map<key, value>. В качестве ключей
используйте названия месяцев, а в качестве значений – массив температур по дням.
Напишите функцию, которая используя данные из словаря вычислит среднюю
температуру для каждого месяца, и вернет словарь(Map) средних температур (В качестве
ключа название месяца, в качестве значения коллекция средних температура)*/


/* import 'dart:math';
void main() {
  List<String> month = [
  'Январь',
  'Февраль',
  'Март',
  'Апрель',
  'Май',
  'Июнь',
  'Июль',
  'Август',
  'Сентябрь',
  'Октябрь',
  'Ноябрь',
  'Декабрь'];
  var temperature = List.generate(12, (i) => List.generate(30, (j) => Random().nextInt(36) + 5));
  for (int i = 0; i < temperature.length; i++){
    for (int j = 0; j < temperature[i].length; j++){
    }
    print(" ");
  }
  Map<String, List<int>> monthTemp = {};
  for(int i = 0; i < 12; i++){
    monthTemp.addAll({month[i]:temperature[i]});
  }
  print(monthTemp);
  print(srTem(monthTemp));
}
  Map srTem(monthTemp){
    Map<String, double> midTemp = {};
    double midTem = 0;
    for(var item in monthTemp.entries){
      for(int i = 0; i < 30; i++){
        midTem += item.value[i];
      }
      midTemp.addAll({item.key:midTem / 30});
      midTem = 0.0;
    }
    return midTemp;
  } */