UPPERCASE = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
LOWERCASE = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def letter_case_count(string)
  lower_count = 0
  upper_count = 0
  string.each_char do |x|
    if UPPERCASE.include?(x)
      upper_count += 1
    elsif LOWERCASE.include?(x)
      lower_count += 1
    end
  end
  neither = string.length - lower_count - upper_count
  { lowercase: lower_count, uppercase: upper_count, neither: neither }
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')
