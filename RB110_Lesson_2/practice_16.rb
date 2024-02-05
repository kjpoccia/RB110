HEXADECIMALS = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)


def generate_uuid()
  uuid = generate_sub_uuid(8) + "-" + generate_sub_uuid(4) + "-" + generate_sub_uuid(4) + "-" + generate_sub_uuid(4) +   + "-" + generate_sub_uuid(12)
end

def generate_sub_uuid(num)
  string = ""
  num.times do 
    string << HEXADECIMALS.sample
  end
  string
end

p generate_uuid
