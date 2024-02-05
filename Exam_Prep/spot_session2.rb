=begin
Given an integer array nums and an integer k, 
return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

Problem:
- Given an array and an index, return true if there are two distinct indices i and j such that array[i] == array[j]
- And i - j <=k
- Input is array and index,
- Output is a boolean

Example:
nums([1,2,3,1], 3) == true
nums([1,0,1,1], 1) == true
nums([1,2,3,1,2,3], 3) == false

Data:
- Array

Algorithm:
- Iterate through the array for each element, 
- Iterate through the array again (nested each)