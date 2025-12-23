/*
1071. Greatest Common Divisor of Strings
For two strings s and t, we say "t divides s" if and only if s = t + t + t + ... + t + t (i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.

 

Example 1:

Input: str1 = "ABCABC", str2 = "ABC"
Output: "ABC"
Example 2:

Input: str1 = "ABABAB", str2 = "ABAB"
Output: "AB"
Example 3:

Input: str1 = "LEET", str2 = "CODE"
Output: ""
 

Constraints:

1 <= str1.length, str2.length <= 1000
str1 and str2 consist of English uppercase letters.

	1.	بدنا نلاقي أكبر مقطع نصّي ممكن نكرره أكثر من مرة ليعطينا str1 وكذلك str2.
	2.	لازم هذا المقطع يكون لما نعمله تكرار يعطي النص كامل بدون ما يزيد أو ينقص لأي واحد من السطرين.
	3.	لو ما في أي مقطع مشترك ينفع ينقسم عليه النصّين، بنرجّع نص فاضي “”.

  اكتب خوازمية لحل السؤال
  القاسم المشترك الأكبر
8 → 1, 2, 4, 8
12 → 1, 2, 3, 4, 6, 12
١-التأكد إنه النص يحتوي pattern يكون كلا النصين إذا كان صحيح ينتقل
 للخطوة التالية غير ذلك ينتقل للخطوة الأخيرة.
٢-نحلل القاسم المشترك الأكبر لطول النصين
3-بعد إيجاد القاسم المشترك الأكبر تكون السلسلة النصية =هذا القاسم
4-نقطتع النص بحسب القاسم المشترك
5-طباعة النص

*/

class Solution {
  String gcdOfStrings(String str1, String str2) {
    String gcdOfStrings = '';
    if (str1 + str2 == str2 + str1) {
      int? gcd;
      for (int i = str2.length; i >= 1; i--) {
        if (str1.length % i == 0 && str2.length % i == 0) {
          gcd = i;
          break;
        }
      }
      if (gcd != null && gcd != 1) {
        return gcdOfStrings = str1.substring(0, gcd);
      } else if (gcd == 1) {
        return gcdOfStrings = str1.substring(0, 1);
      }
    } else {
      return '';
    }

    return gcdOfStrings;
  }
}
