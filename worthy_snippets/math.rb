math = 0

puts "Enter one of the following numbers:"
puts "Enter 1 for multiplication"
puts "Enter 2 for division"
puts "Enter 3 for addition"
puts "Enter 4 for subtration"
print "\nYour selection: "
menu = gets.to_i

case menu
 when 1
  puts "Enter first number to multiply:"
  mult1 = gets.to_i
  puts "times what second number?"
  mult2 = gets.to_i
  puts "#{mult1} times #{mult2} is #{mult1 * mult2}."
 when 2
  puts "Enter first number to divide:"
  div1 = gets().to_i
  puts "by what second number?"
  div2 = gets().to_i
  puts "#{div1} divided by #{div2} is #{div1 / div2}."
 when 3
  puts "Enter first number to add:"
  add1 = gets().to_i
  puts "add to what second number?"
  add2 = gets().to_i
  puts "#{add1} plus #{add2} is #{add1 + add2}."
 when 4
  puts "Enter first number to subtract:"
  sub1 = gets().to_i
  puts "minus what second number?"
  sub2 = gets().to_i
  puts "#{sub1} minus #{sub2} is #{sub1 - sub2}."
 else
  puts "Invalid selection."
end


