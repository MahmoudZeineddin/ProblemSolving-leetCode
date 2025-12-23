/*
 * Given an input string s, reverse the order of the words.

A word is defined as a sequence of non-space characters. The words in s will be separated by at least one space.

Return a string of the words in reverse order concatenated by a single space.

Note that s may contain leading or trailing spaces or multiple spaces between two words. The returned string should only have a single space separating the words. Do not include any extra spaces.

 

Example 1:

Input: s = "the sky is blue"
Output: "blue is sky the"
Example 2:

Input: s = "  hello world  "
Output: "world hello"
Explanation: Your reversed string should not contain leading or trailing spaces.
Example 3:

Input: s = "a good   example"
Output: "example good a"
Explanation: You need to reduce multiple spaces between two words to a single space in the reversed string.
 

Constraints:

1 <= s.length <= 104
s contains English letters (upper-case and lower-case), digits, and spaces ' '.
There is at least one word in s.
 

Follow-up: If the string data type is mutable in your language, can you solve it in-place with O(1) extra space?
 * 
 * 
*/
library;

class Solution {
  String reverseWords(String s) {
    List<dynamic> wordsReversed = [];
    s = s.trim();
    s = s.trimLeft();
    s = s.trimRight();
    wordsReversed = wordsReversed = s.split(' ');
    for (int i = 0; i < s.length; i++) {
      if (s[i] != " ") {
        if (i < s.length - 2 && s[i + 1] != " " && s[i + 2] != " ") {
          print(s.substring(i, i + 1));
        }
      }
    }
    // wordsReversed = wordsReversed.reversed.toList;
    /*
    for (int i = 0; i < s.length; i++) {
      int index = 0;
      String word;
      if (s[i] == " ") {
        spaceFind.add(i);
      }
      
      if (spaceFind.isNotEmpty &&
          spaceFind.length >= 2 &&
          !s.substring(spaceFind[index], spaceFind[index + 1]).contains(" ")) {
        word = s.substring(spaceFind[index], spaceFind[index + 1]);
        wordsReversed.add(word);
      }
     
    }
   
   
     */
    print(wordsReversed);
    return s;
  }
}

void main() {
  var s = Solution();
  var result = s.reverseWords("  the sky.    is blue     ");
  print(result);
}
