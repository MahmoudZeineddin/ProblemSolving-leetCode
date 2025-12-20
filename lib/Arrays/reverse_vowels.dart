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
    List<String> vowelsFind = [];
    String text = s.toLowerCase();
    for (int i = 0; i < s.length; i++) {
      if (vowels.contains(text[i])) {
        indexOfChar.add(i);
        vowelsFind.add(text[i]);
      }
    }
    // لهان وصلت
    final reversed = vowelsFind.reversed;

    for (int i = 0; i < s.length; i++) {
      if (!vowels.contains(text[i])) {
        newString += s[i];
      } else {
        // newString += reversed[i];
      }
    }

    print("reversed $reversed");
    print(vowelsFind);
    return newString;
  }
}

void main() {
  var s = Solution();
  var result = s.reverseVowels("IceCreAm");
  print(result);
}
