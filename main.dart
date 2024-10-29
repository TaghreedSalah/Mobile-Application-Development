import 'Dart exercises/Dart-exercise.dart';

void main() {
  DartExercise exercise = DartExercise();
  List<String> color = ['red', 'blue', 'black'];
  List<int> num = [123, 4, 560987, 65432, 1, 44, 44, 7844, 9876, 54321];
  List<int> num0 = [
    12345,
    560987,
    65432,
    1234,
    098,
    654,
    54321,
    9123,
  ];
  List<String> items = ['a', 'b', 'c'];
  print('ايجاد المفاتيح التي طولها 4');
  exercise
      .findKeysWithLength4({'name': 'Ali', 'phone': '1234', 'city': 'Cairo'});
  print('حساب مساحة الدائرة');
  exercise.calculateCircleArea(6.9);
  print('عكس ترتيب الكلمات في جملة');
  exercise.reverseWords('TheHappy');
  print('عكس ترتيب الاسم الاول واسم العائلة');
  exercise.reverseName('Taghreed', 'Salah');
  print('استخراج الامتداد من اسم ملف');
  exercise.getFileExtension('MyLove.txt');
  print('عرض اللونين الاول والاخير من قائمة الالوان');
  exercise.displayFirstAndLastColors(color);
  print('عد الرقم 4 في قائمة');
  exercise.countNumberFour(num);
  print('التحقق ما اذاكان الحرف علة');
  exercise.checkIfVowel('a');
  print('التحقق ما اذاكان الحرف علة');
  exercise.checkIfVowel('b');
  print('دمج العناصر في قائمة الى سلسلة نصية');
  exercise.concatenateList(items);
  print('مجموع اول 5 اعداد زوجية بعد عدد معين');
  exercise.sumOfFirstFiveEvenNumbers(5);
  print('انشاء نمط نجوم باستخدام حلقة متداخلة');
  exercise.printPattern();
  print('عد تكرار كل حرف في كلمة');
  exercise.countCharacterOccurrences('الامل');
  print('ايجاد العناصر المشتركة بين قائمتين بدون تكرار');
  exercise.findCommonElements(num, num0);
  print('التحقق ما اذا كانت السلسلة النصية معكوسة');
  exercise.checkPalindrome('happiness');
  print('توليد سلسلة فيبوناتشي بعدد معين من الارقام');
  exercise.generateFibonacci(6);
}
