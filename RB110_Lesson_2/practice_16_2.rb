uuid = []

hexa = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

32.times do |n|
  uuid << hexa.sample
end

uuid_string = uuid[0..7].join + "-" + uuid[8..11].join + "-" + uuid[12..15].join + "-" + uuid[16..19].join + "-" + uuid[20..31].join

p uuid_string