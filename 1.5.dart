
/*Задание 1. Дан файл numsTask1.txt с целыми числами, вычислите произведение
элементов расположенных после минимального*/

/*import 'dart:io';

void main() {
  File("C:/RcisEducationPracticeOne/rcis_ep_task_one/bin/numsTask1.txt").readAsString().then((String contents) {
    List<String> nums = contents.split(' ');
    print(nums);

    int min = int.parse(nums[0]);
    int it = 0;
    int mult = 1;
    for (int i = 0; i < nums.length; i++) {
      if (min > int.parse(nums[i])) {
        min = int.parse(nums[i]);
        it = i;
      }
    }
    for (int j = it + 1; j < nums.length; j++) {
      mult *= int.parse(nums[j]);
    }
    print("Минимальный элемент = $min");
    print(
        "Произведение элементов, расположенных после минимального равно $mult");
  });
}*/

/*Задание 2. Дан файл numsTask2.txt с вещественными числами, расположенными через
«;». Напишите алгоритм, сортирующий числа по возрастанию. Запишите полученную
отсортированную последовательность обратно в файл;*/

/*import 'dart:io';

void main() {
  var result = File("C:/RcisEducationPracticeOne/rcis_ep_task_one/bin/numstask(3).txt").openWrite();
  File("C:/RcisEducationPracticeOne/rcis_ep_task_one/bin/numstask(2).txt").readAsString().then((String contents) {
    List<String> nums = contents.split(';');
    print(nums);
    bool sort = false;
    while (!sort) {
      sort = true;
      for (int i = 0; i < nums.length - 1; i++) {
        if (double.parse(nums[i]) > double.parse(nums[i + 1])) {
          var temp = nums[i];
          nums[i] = nums[i + 1];
          nums[i + 1] = temp;
          sort = false;
        }
      }
    }
    print(nums);
    result.write(nums.toString());
  });
}*/