/*
345. Reverse Vowels of a String
Easy
Topics
premium lock icon
Companies
Given a string s, reverse only all the vowels in the string and return it.

The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

 

Example 1:

Input: s = "IceCreAm"

Output: "AceCreIm"

Explanation:

The vowels in s are ['I', 'e', 'e', 'A']. On reversing the vowels, s becomes "AceCreIm".

Example 2:

Input: s = "leetcode"

Output: "leotcede"

*/
class Solution {
  List<String> vowels = ["a", "e", "i", "o", "u"];
  String reverseVowels(String s) {
    String newString = "";
    List<int> indexOfChar = [];
    List<dynamic> vowelsFind = [];
    int indexOfVowelsFind = 0;

    for (int i = 0; i < s.length; i++) {
      if (vowels.contains(s[i].toLowerCase())) {
        indexOfChar.add(i);
        vowelsFind.add(s[i]);
      }
      if (vowelsFind.isEmpty) return s;
    }
    vowelsFind = vowelsFind.reversed.toList();

    for (int j = 0; j < s.length; j++) {
      if (!vowels.contains(s[j].toLowerCase())) {
        newString += s[j];
      } else {
        newString += vowelsFind[indexOfVowelsFind];
        indexOfVowelsFind++;
      }
    }
    return vowelsFind.isEmpty ? s : newString;
  }

  String reverseVowelsBestBractes(String s) {
    // 1. نحول النص لقائمة حروف لنعدل عليها مباشرة (أسرع في الذاكرة)
    List<String> chars = s.split('');

    // 2. نستخدم Set للبحث السريع جداً O(1)
    final vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};

    int left = 0;
    int right = s.length - 1;

    while (left < right) {
      // إذا كان اللي على الشمال مش حرف علة، نتركه ونمشي
      if (!vowels.contains(chars[left])) {
        left++;
      }
      // إذا كان اللي على اليمين مش حرف علة، نتركه ونمشي
      else if (!vowels.contains(chars[right])) {
        right--;
      }
      // إذا الاثنين حروف علة، نبدلهم ببعض
      else {
        String temp = chars[left];
        chars[left] = chars[right];
        chars[right] = temp;
        // نتحرك للخطوة اللي بعدها
        left++;
        right--;
      }
    }
    // 3. ندمج الحروف ونرجعها نص
    return chars.join('');
  }

  /*
ملاحظة تقنية حول كفاءة الحل:

1. السرعة (Time Complexity):

حلي (Two-Pass): 
O(n)
 - حيث قمت بالمرور على النص مرتين (مرة لجمع الحروف ومرة لإعادة البناء).

الحل المثالي (Two-Pointers): 
O(n)
 - يمر على النص مرة واحدة فقط من خلال التقاء المؤشرين من الطرفين.

2. الذاكرة (Space Complexity):

حلي (Two-Pass): 
O(n)
 - استهلك ذاكرة إضافية لتخزين أحرف العلة في قائمة منفصلة.

الحل المثالي (Two-Pointers): 
O(1)
 - لا يستهلك ذاكرة إضافية لأنه يعدل الأحرف في مكانها داخل القائمة الأساسية.

3. التقييم الهندسي:

الحل الأول (Two-Pass) منطقي جداً للمبتدئين وسهل في تتبع الأخطاء.

الحل المثالي (Two-Pointers) هو الأسلوب الاحترافي المتبع في الأنظمة ذات الموارد المحدودة (مثل تطبيقات الموبايل في Flutter) لأنه يقلل الضغط على الذاكرة (Memory Overhead) ويوفر في استهلاك المعالج.
*/
}

void main() {
  var s = Solution();
  var result = s.reverseVowels("IceCreAm");
  print(result);
}
