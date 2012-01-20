counter = 0
begin
 print "Tora! "
 counter += 1
end until counter == 3 #until checks after block runs at least once

puts "\ncount by 37's:\n"

x=37
y=37
thirty_sevens = []

while(x < 800) #while runs only while condition is true
 if (x % y) == 0: # if the quotient is even
  thirty_sevens << x
 end
 x += 1
end

puts thirty_sevens.join("\n")


