#loopy

my_x = 115
my_y = 40

while(my_x < 150)
 my_x += 1
 break if (my_x % my_y) == 0
 puts my_x 
 next
end

puts my_x

