/*
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

 

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
*/

class Solution {
    func twoSum(_ nums:[Int] ,  _ target : Int) -> [Int] {
        
      // return  solution1( nums , target) 
       return solution2 (nums, target) 

    }

    func solution1(_ nums:[Int] ,  _ target : Int) -> [Int] {
        // first of we have an array. which is not sorted.   we have to sort the array but will loose the index tracking.
        // so let's sort the array in different manner and also preserve the index  so let's make array of tuple. 

        let indexNums = nums.enumerated().map{ ($0.offset, $0.element) } 
        // now we have array of tuples. 
        // let's  make make it sorted element while maintaing the tracking indexes. 
        let sorted = indexNums.sorted { $0.1 < $1.1 }

        //  now let's use two of pointer method to see what 's going on.... 

        var left = 0 
        var right = sorted.count - 1 

        while left  < right {
            let sum = sorted[left].1 + sorted[right].1 

            if sum  == target {
                return [sorted[left].0, sorted[right].0]
            }else if sum  > target {
                 right -= 1 
            }else {
                left += 1
            }
        }
return []
    }

    func solution2(_ nums : [Int], _ target : Int ) -> [Int] {
         var sortedNums :[Int] = []

         for num in nums {
            sortedNums.append(num)
         }

         var left = 0 
         var right = nums.count - 1 
         while true {
            if sortedNums[left] + sortedNums [right] == target {
               return [nums.firstIndex(of: sortedNums[left])!, nums.lastIndex(of: sortedNums[right])!].sorted()
            }else if sortedNums[left] + sortedNums [right] > target {
                right -= 1 
            }else {
                left += 1
            }
         }
         return []
    }


}



let answerObj = Solution()
print(answerObj.twoSum([2,7,11,15], 9))