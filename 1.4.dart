/*УП Практическая работа 1.4*/


/*Задание 1. Дано целое положительное число n. Вычислите произведение натуральных
чисел, кратных трём и не превышающим число n*/

/* import 'dart:math';

void main() {
  int n = Random().nextInt(30);
  int result = 1;
  for (int i = 3; i <= n; i++) {
    if (i % 3 == 0) {
      result *= i;
    }
  }
  print('n - $n');
  print(result);
}  */


/*Задание 2. Дан файл numsTask2.txt с вещественными числами, расположенными через
«;» Переберите все числа до 0. Определите сумму положительных элементов
получившейся последовательности;*/
/* import 'dart:io';
import 'dart:math';

void main() {
  createFile();
  print('Сумма положительной последовательности - ${sumSequence()}');
}

void createFile() {
  final file = File('numsTask2.txt');
  String str = '';
  for (int i = 0; i < 10; i++) {
    str +=
        '${Random().nextBool() ? Random().nextDouble() * 5.0 : (Random().nextBool() ? Random().nextDouble() * -5.0: 0.0)};';
  }
  file.writeAsStringSync(str);
}

double sumSequence() {
  double sum = 0.0;
  String str, strNum = '';
  List<double> mas = [];
  final file = File('numsTask2.txt');
  str = file.readAsStringSync();
  for (int i = 0; i < str.length; i++) {
    if (str[i] != ';') {
      strNum += str[i];
    } else {
      mas.add(double.parse(strNum));
      strNum = '';
    }
  }
  for (int i = 0; i < mas.length; i++) {
    if (mas[i] == 0.0) {
      break;
    }
    if (mas[i] > 0.0) {
      sum += mas[i];
    }
  }
  return sum;
} */

/*Задание 3. Дан файл numsTask3.txt с целыми числами, расположенными через «,».
Переберите все числа до 0. Определите отношение минимального и максимального
элементов друг к другу;*/

/* import 'dart:io';
import 'dart:math';

void main() {
  createFile();
  ratio();
}

void createFile() {
  final file = File('numsTask3.txt');
  String str = '';
  for (int i = 0; i < 10; i++) {
    str += '${Random().nextInt(11)},';
  }
  file.writeAsStringSync(str);
}

void ratio() {
  int min = 10, max = 1;
  String str, strNum = '';
  List<int> mas = [];
  final file = File('numsTask3.txt');
  str = file.readAsStringSync();
  for (int i = 0; i < str.length; i++) {
    if (str[i] != ',') {
      strNum += str[i];
    } else {
      mas.add(int.parse(strNum));
      strNum = '';
    }
  }
  for (int i = 0; i < mas.length; i++) {
    if (mas[0] == 0) {
      print('Отношение минимального элемента к максимальному - 0');
      break;
    }
    if (mas[i] == 0) {
      break;
    }
    if (mas[i] < min) {
      min = mas[i];
    }
    if (mas[i] > max) {
      max = mas[i];
    }
  }
  if (mas[0] != 0) {
    print('Отношение минимального элемента к максимальному - ${min / max}');
  }
} */

/*Задание 4. Дан файл numsTask4.txt с целыми числами, расположенными через пробел.
Определите количество одинаковых рядом стоящих чисел;*/

/*import 'dart:io';

void main() {
  //Чтобы код заработал нужно указать на путь к файлу, так всё работает
  File("C:/RcisEducationPracticeOne/rcis_ep_task_one/bin/numsTask4.txt").readAsString().then((String contents) {
    List<String> nums = contents.split(' ');
    int c = 0;
    for (int i = 0; i < nums.length - 1; i++) {
      if (int.parse(nums[i]) == int.parse(nums[i + 1])) {
        c += 1;
      }
    }
    print(nums);
    print("Количество одинаковых рядом стоящих чисел равно = $c");
  });
}*/

/*Задание 5. Даны вещественные числа a и b. Определите, принадлежит ли точка с
координатами (a; b) заштрихованной области;*/

/* import 'dart:math';

void main() {
  double a = Random().nextBool() ? Random().nextDouble() * 4.0 : (Random().nextDouble() * -3.0);
  double b = Random().nextBool() ? Random().nextDouble() * 4.0 : (Random().nextDouble() * -3.0);
  if((a >= -1 && a <= 3) && (b <= 4 && b >= -2)){
    print('Точка ($a;$b) принадлежит заштрихованной области');
  }
  else{
    print('Точка ($a;$b) не принадлежит заштрихованной области');
  }
} */