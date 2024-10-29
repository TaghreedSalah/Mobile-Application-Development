import 'dart:io';
import 'dart:math';

import 'task.dart';

class DartExercise {
  //ايجاد المفاتيح التي طولها 4
  void findKeysWithLength4(Map<String, String> map) {
    var keys = map.keys.where((key) => key.length == 4);

    print("Key with length 4:$keys");
  }

  //حساب مساحة الدائرة
  void calculateCircleArea(double radius) {
    double area = pi * radius * radius;

    print("The area is:$area");
  }

  //عكس ترتيب الكلمات في جملة
  void reverseWords(String sentence) {
    List<String> words = sentence.split('');
    String? reversed = words.reversed.join('');

    print('Reversed sentence:$reversed');
  }

  // عكس ترتيب الاسم الاول واسم العائلة
  void reverseName(String firstName, String lastName) {
    print("$lastName $firstName");
  }

//استخراج الامتداد من اسم ملف
  void getFileExtension(String filename) {
    List<String> parts = filename.split('.');
    if (parts.length > 1) {
      print('File extension:${parts.last}');
    } else {
      print('No exteension found');
    }
  }

  //عرض اللونين الاول والاخير من قائمة الالوان
  void displayFirstAndLastColors(List<String> colors) {
    if (colors.isNotEmpty) {
      print('First color:${colors.first},Last color:${colors.last}');
    } else {
      print('Color list is empty.');
    }
  }

//عد الرقم 4 في قائمة
  void countNumberFour(List<int> numbers) {
    int count = numbers.where((num) => num == 4).length;
    print('Namber 4 appears $count times.');
  }

//التحقق ما اذاكان الحرف علة
  void checkIfVowel(String character) {
    if (character.length == 1) {
      bool isVowel = 'aeiou'.contains(character.toLowerCase());
      print(isVowel ? '$character is a vowel' : '$character is not a vowel');
    } else {
      print('Please enter a single character.');
    }
  }

  //دمج العناصر في قائمة الى سلسلة نصية
  void concatenateList(List<String> items) {
    String result = items.join('');
    print('Concatenated string $result');
  }

//مجموع اول 5 اعداد زوجية بعد عدد معين
  void sumOfFirstFiveEvenNumbers(int start) {
    int sum = 0, count = 0;
    while (count < 5) {
      if (start % 2 == 0) {
        sum += start;
        count++;
      }
      start++;
    }
    print('Sum of first 5 even numbers:$sum');
  }

  // انشاء نمط نجوم باستخدام حلقة متداخلة
  void printPattern() {
    for (int i = 1; i <= 5; i++) {
      print('*' * i);
    }
  }

  //عد تكرار كل حرف في كلمة
  void countCharacterOccurrences(String word) {
    Map<String, int> charCount = {};
    for (var char in word.split('')) {
      charCount[char] = (charCount[char] ?? 0) + 1;
    }
    print('Character occurrences:$charCount');
  }

  //ايجاد العناصر المشتركة بين قائمتين بدون تكرار
  void findCommonElements(List<int> listA, List<int> listB) {
    List<int> common = listA.toSet().intersection(listB.toSet()).toList();
    print('Common elements:$common');
  }

//التحقق ما اذا كانت السلسلة النصية معكوسة
  void checkPalindrome(String text) {
    bool isPalindrome = text == text.split('').reversed.join('');

    print(isPalindrome ? '$text is a palindrome' : '$text is not a palindrome');
  }

  //توليد سلسلة فيبوناتشي بعدد معين من الارقام
  void generateFibonacci(int count) {
    List<int>? fibonacci = [0, 1];
    for (int i = 2; i < count; i++) {
      fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
    }
    print('Fibonacci series:${fibonacci.take(count).toList()}');
  }

  //نظام قائمة المهام البسيط

  void toDoListSystem() {
    List<Task> tasks = [];
    bool isRunning = true;
    while (isRunning) {
      print(
          '\n======================================Welcomec To To-Do List System:\n1.Add Task\n2.Remove Task\n3.Vieww Tasks\n4.Exit.');
      stdout.write('Your Choice:');
      String? choice = stdin.readLineSync();
      switch (choice) {
        case '1':
          stdout.write('Enter task title:');
          String title = 'The Happt';
          title = stdin.readLineSync()!;

          stdout.write('Enter task description:');
          String description = stdin.readLineSync()!;
          tasks.add(Task(title, description));
          print('Task added successfully.');
          break;
        case '2':
          stdout.write('Enter task number to remove:');
          int index = int.parse(stdin.readLineSync()!) - 1;
          if (index >= 0 && index < tasks.length) {
            tasks.removeAt(index);
            print('Task removed successfully.');
          } else {
            print('invalid task index.');
          }
          break;
        case '3':
          if (tasks.isEmpty) {
            print('No tasks to display.');
          } else {
            tasks.forEach((task) => print(task));
          }
          break;
        case '4':
          isRunning = false;
          print('Exiting To-Do List System.\nGoodbye');
          break;
        default:
          print('Invalid choice.\nPlease try again.');
      }
    }
  }
}
