=begin
Problem:
- Write a program that can handle 9 different commands:
  - n (put a number in a register)
  - push (put a number onto the stack)
  - add (removes the top value from the stack, adds it to the register, that result is now in the register)
  - sub (removes the top value from the stack, subtracts it from the register, that result is now in the register)
  - mult (removes the top value from the stack, multiplies it by the register, that result is now in the register)
  - div (removes the top value from the stack, divides it into the register, that INTEGER result is now in the register)
  - mod (removes the top value from the stack, divides it into the register, stores the remainder in the register)
  - pop (remove the top value from the stack and place in register)
  - print (print the register)

Examples:
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

Data structures:
- Array for the stack. Early numbers will be top of stack
- Integer for the register

Algorithm:
The main method will take a string, that string will be converted into an array of commands.
If the command is a number, it goes into the register
If the command is a word, call the function with the register and the stack. 
The function will mutate the stack and return the number that should now be in the register

Helper methods:
Push: use unshift on the array
All the methods that remove from the array: Use shift on the array
=end

def push!(register, stack)
  stack.unshift(register)
end

def add!(register, stack)
  register + stack.shift
end

def subtract!(register, stack)
  register - stack.shift
end

def mult!(register, stack)
  register * stack.shift
end

def div!(register, stack)
  register / stack.shift
end

def mod!(register, stack)
  register.modulo(stack.shift)
end

def pop!(register, stack)
  stack.shift
end

def minilang(string)
  register = 0
  stack = []
  commands = string.split(' ')
  commands.each do |command|
    case
    when command.to_i.to_s == command
      register = command.to_i
    when command == "PUSH"
      push!(register, stack)
    when command == "ADD"
      register = add!(register, stack)
    when command == "SUB"
      register = subtract!(register, stack)
    when command == "MULT"
      register = mult!(register, stack)
    when command == "DIV"
      register = div!(register, stack)
    when command == "MOD"
      register = mod!(register, stack)
    when command == "POP"
      register = pop!(register, stack)
    when command == "PRINT"
      puts register
    end
  end
  #puts stack
end

minilang('PRINT')

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

minilang('3 PUSH 5 MOD PUSH 3 PUSH 7 PUSH 4 PUSH 5 MULT SUB ADD DIV PRINT')

