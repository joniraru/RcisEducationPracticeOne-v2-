/*УП Практическая работа 1.3*/

/*Задание 1. На различных мероприятиях команда стажировок регулярно разыгрывает
призы в лотерею. Организаторы выбирают 10 случайных различных чисел от 1 до 32.
Каждому участнику выдается лотерейный билет, на котором записаны 6 различных чисел
от 1 до 32. Билет считается выигрышным, если в нем есть не менее 3 выбранных
организаторами числа. Помогите Юле, напишите программу, которая будет сообщать,
какие билеты выигрышные.*/

/*import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async
{ int n;
  String biletsString;
  
  stdout.write('Введите количество лотерейных билетов - ');
  n = int.parse(stdin.readLineSync() ?? 'Failure');
  biletsString = await lotBiletsFile(n);
  resultsFile(biletsString);
  
}

void resultsFile(String biletsData){
  final file = File('output.txt');
  List<String> listCheck = [], listBilets = [];
  String str1 = '', str2 = '', strWin = '';
  int num, numI = 0, numWin = 0;
  
  for(int i = 0; biletsData[i] != '\n'; i++){
    numI++;
    if (biletsData[i] != ' '){
      str1 += biletsData[i];
      continue;
      }
    else{
      listCheck.add(str1);
      str1 = '';
      continue;
    }  
  }
  numI += 1;
  for(int i = numI; biletsData[i] != '\n'; i++){
    str2 = str2 + biletsData[i];
    numI = i;
  }
  numI += 2;
  num = int.parse(str2);
  for(int j = 0; j < num; j++){
    for(int i = numI; biletsData[i] != '\n'; i++){
      numI++;
      if (biletsData[i] != ' '){
        str1 += biletsData[i];
        continue;
        }
      else{
        listBilets.add(str1);
        str1 = '';
        continue;
      }  
    }
    numI++;
  }
    
    for(int i = 0; i < listBilets.length; i += 6){
      for(int k = i; k < i+6; k++){
        for(int j = 0; j < 10; j++){
          if(listBilets[k]==listCheck[j]) {
            numWin++;
          }
        }
      }
        if(numWin >= 3){
          strWin += 'Lucky\n';
        }else{
          strWin += 'Unlucky\n';}
      numWin = 0;
    }
  file.writeAsString(strWin);
}


Future<String> lotBiletsFile(int n) async{
  int num;
  final file = File('input.txt');
  String str1 = '';
  str1 = str1 + '11 13 7 21 3 22 10 24 18 29 \n';
  str1 = str1 + '$n\n';
  for(int i = 0; i < n; i++){
    for(int j = 0; j < 6; j++){ 
      num = (Random().nextInt(31) + 1);
      str1 = str1 + num.toString() + ' ';
    }
    str1 = str1 + '\n'; 
  }
  file.writeAsString(str1);
  String fileContent = await file.readAsString();
  return fileContent;
}*/

/*Задание 2. Дан файл(nums.txt), содержащий целые числа, через пробел. Удалите из него
все четные числа;*/

/*import 'dart:io';
import 'dart:math';

void main()
{
  createFile();
  readFile();
  
}

void createFile() {
  final file = File('nums.txt');
  String str = '';
  for (int i = 0; i < 10; i++) {
    str += '${Random().nextInt(20)},';
  }
  file.writeAsStringSync(str);
}

void readFile() async
{
  String str = '';
  List<int> mas = [];
  final nums = File('nums.txt');
  str = nums.readAsStringSync();
  for(int i = 0; ; i++)
  {
    mas[i] = int.parse(str);
    if (mas[i] % 2 == 0)
    {
      mas.remove(mas[i]);
    }
    print(mas[i]);
  }
}*/

/*List<String> nums = contents.split(' ');
    print(nums);
    for (int i = 0; i < nums.length; i++) {
      if (double.parse(nums[i]) % 2 == 0) {
        nums.removeAt(i);
      }
    }
    print(nums);
  });
}*/

/*Задание 3. Дан файл, содержащий несколько целых чисел количеством i. Создайте
массив height длиной i. Каждый элемент массива это вертикальная линия определенной
длины. Найдите две линии, которые вместе с осью x образуют контейнер, содержащий
наибольшее количество воды;*/
