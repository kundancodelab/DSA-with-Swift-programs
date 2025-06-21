/*
Given an array arr[] of integers, change the given array such that at any index i it contains the sum of all elements except itself. Simple way arr[i] should be arr[0] + arr[1] ... arr[i-1] + arr[i+1] ... arr[n-1].

Input: arr[] = [3, 6, 4, 8, 9]
Output: [27, 24, 26, 22, 21]
Explanation: For the sum array, at i=0 we have 6+4+8+9. At i=1, 3+4+8+9. At i=2, we have 3+6+8+9. At i=3, we have 3+6+4+9. At i = 4, we have 3+6+4+8. So S is 27 24 26 22 21.
*/


class Solution {
    func sumArray(_ array : [Int]) -> [Int] {
        // let's apply brute force approch 
        var resultArray:[Int] = []
        
        for ( _ , num) in array.enumerated() {
             let value = num 
             var sum = 0 
             for (_, num) in array.enumerated() {
                  if num == value {
                    continue 
                  }
                  sum += num 
 
             }
             resultArray.append(sum)
             
        }
        return resultArray
    }
}

let answerObj = Solution() 
print(answerObj.sumArray([3, 6, 4, 8, 9]))



// The time complexity of this algo is wrost case n^2   which is bad algorithm.