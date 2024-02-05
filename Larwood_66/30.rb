=begin
- Create an array of each word. Sort the letters. Iterate through the array, remove
the letter that's earlier in the array. When you're out of letters in one array, 
delete the remaining letters. Calculate the difference between the initial two
arrays and the final two arrays.
=end

# def common_chars(arr1, arr2)
#   n = 0
#   loop do
#     break if n > arr1.length - 1 || n > arr2.length - 1
#     if arr1[n] == arr2[n]
#       n += 1
#       next
#     else
#       arr1[n] < arr2[n] ? arr1.delete_at(n) : arr2.delete_at(n)
#     end
#   end
#   return arr1, arr2
# end

# def anagram_difference(str1, str2)
#   return [str1.length, str2.length].max if str1 == '' || str2 == ''
#   arr1 = str1.split('').sort
#   arr2 = str2.split('').sort
#   initial_length = arr1.length + arr2.length
#   arr1, arr2 = common_chars(arr1, arr2)
#   initial_length - ([arr1.length, arr2.length].min * 2)
# end

def anagram_difference(w1, w2)
  alpha = ('a'..'z').to_a
  sum = 0
  
  alpha.each do |char|
    sum += (w1.count(char) - w2.count(char)).abs
  end 
  
  sum
end

# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('ab', 'a') == 1
# p anagram_difference('ab', 'ba') == 0
# p anagram_difference('ab', 'cd') == 4
# p anagram_difference('aab', 'a') == 2
# p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') #== 10

