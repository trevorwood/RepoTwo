evens = [0,2,4,6,8,10,12,14,16,18,20]

for index in evens
 print index.to_s + ", "
end

puts

counter = 0

begin
 print "Tora! "
 counter += 1
end until counter == 3

puts

my_x = 115
my_y = 40
temp = 0

while(my_x < 150)
 if (my_x % my_y) == 0: # if the quotient is even
  temp = my_x
  my_x = 151
 else
  my_x += 1
 end
 puts my_x
end

my_x = temp
puts my_x

