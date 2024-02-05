class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

little_cat = Cat.new("orange")
big_cat = Cat.new("grey")

puts Cat.cats_count

=begin
benefits:
- Keeping code protected
- Organization
- Compartmentalization (encapsulation?)
- Polymorphism

case 1:
  "Hello"
case 2:
  No method error
case 3:
  Incorrect number of arguments (given 0, expected 1)
case 4:
  "Goodbye"
case 5:
  No method error