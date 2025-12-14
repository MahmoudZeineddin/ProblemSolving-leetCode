/*
605. Can Place Flowers
Easy
Topics
premium lock icon
Companies
You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.

 

Example 1:

Input: flowerbed = [1,0,0,0,1], n = 1
Output: true
Example 2:

Input: flowerbed = [1,0,0,0,1], n = 2
Output: false
 

Constraints:

1 <= flowerbed.length <= 2 * 104
flowerbed[i] is 0 or 1.
There are no two adjacent flowers in flowerbed.
0 <= n <= flowerbed.length


المطلوب منك باختصار:
	•	عندك مصفوفة (array) فيها أرقام 0 و 1
	•	0 → خانة غير مزروعة
	•	1 → خانة مزروعة
	•	عندك رقم n (عدد الزهور اللي بدك تزرعها)
	•	بدك تشوف:
هل عدد الخانات اللي مسموح أزرع فيها ≥ n ؟
	•	الخانة مسموح تزرع فيها إذا:
	1.	قيمتها 0
	2.	الخانة اللي قبلها مش 1 (أو ما في خانة قبلها)
	3.	الخانة اللي بعدها مش 1 (أو ما في خانة بعدها)
	•	إذا قدرت تزرع n زهور بدون ما يكون في زهور متجاورة → ترجع true
	•	إذا ما قدرت → ترجع false
  الخوازيمية
  ١-أفحص عدد الخانات المسموح بزراعتها
  ٢-
  زبط بس في مشكلة في أول عنصر بده تعديل
*/
class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int numberOfAvailable = 0;
    List<int> newflowerbed = flowerbed;
    print(newflowerbed.length);
    for (int i = 0; i < newflowerbed.length; i++) {
      if (flowerbed[i] == 0) {
        if (i == 0 && newflowerbed[i] == 0 && newflowerbed[i + 1] == 0) {
          numberOfAvailable += 1;
          newflowerbed[i] = 1;
        } else if (i == newflowerbed.length - 1 &&
            newflowerbed[i] == 0 &&
            newflowerbed[i - 1] == 0) {
          numberOfAvailable += 1;
          newflowerbed[i] = 1;
        } else if (i > 0 && i < newflowerbed.length - 1) {
          if (newflowerbed[i] == 0 &&
              newflowerbed[i - 1] == 0 &&
              newflowerbed[i + 1] == 0) {
            numberOfAvailable += 1;
            newflowerbed[i] = 1;
          }
        }
        if (numberOfAvailable >= n) {
          return true;
        }
      }
    }
    return numberOfAvailable >= n;
  }
}

void main() {
  var s = Solution();
  print(s.canPlaceFlowers([0], 1));
}
