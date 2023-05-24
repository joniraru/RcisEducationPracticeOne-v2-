/*УП Практическая работа 1.6*/

/*Задание 3. Дано число. Определите будет ли это число четным и кратным 10;*/

/*import "dart:io";

void main(List<String> args) {
  stdout.write("Число: ");
  int a = int.parse(stdin.readLineSync()!);
  int b = a % 2;
  int c = a % 10;
  if (b == 0 && c == 0)
  {
    print("Число чётное и кратно 10");
  }
  else if (b == 0 && c != 0)
  {
    print("Число чётное, некратно 10");
  }
  else if (b != 0 && c != 0)
  {
    print("Число нечётное, некратно 10");
  }
}*/

/*Задание 4. Вводятся положительные числа. Определите сумму чисел, делящихся на
положительное число a нацело. При вводе отрицательного числа закончите работу;*/

/*import "dart:io";

void main() {
  int sum = 0;
  stdout.write("Введите а: ");
  int a = int.parse(stdin.readLineSync()!);
  while (true) {
    stdout.write("Добавьте число в список: ");
    int b = int.parse(stdin.readLineSync()!);
    if (b >= 0 && b % a == 0)
    {
      sum += b;
    }
    else if (b < 0)
    {
      break;
    }
  }
  stdout.write("Сумма = $sum");
}*/