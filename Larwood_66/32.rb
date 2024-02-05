require 'pry-byebug'

def score(word)
  alpha = ('a'..'z').to_a
  sum = 0
  # binding.pry
  word.each_char { |char| sum += alpha.index(char.downcase) + 1 }
  sum
end

def high(x)
  arr = x.split
  longest = arr[0]
  arr.map! { |word| score(word) }
  x.split[arr.index(arr.max)]
end

# p high('man i need a taxi up to ubud') #== 'taxi'
# p high('what time are we climbing up the volcano') #== 'volcano'
# p high('take me to semynak') #== 'semynak'
# p high('aaa b') #== 'aaa'
p high('testing for ffxzhhf plosz ym ld ijpelae fismvx yhebhquv lzkwiqw hfd uyuqwotmmrb qmtvyuhjl gitue')
