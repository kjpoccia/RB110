a = 2
b = [5, 8]
arr = [a, b] #[2, [5, 8]]

arr[0] += 2 #[4, [5, 8]]
arr[1][0] -= a #[4, [3, 8]]

# a will still be 2
# b will be [3, 8]

p a
p b 
p arr
