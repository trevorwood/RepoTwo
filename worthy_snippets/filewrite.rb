puts "I'm writing to a file!"

File.open("file_to_write", "w") do |myfile|
 counter = 0

 begin
  myfile.write("Howdy!\n")
  counter += 1
 end until counter == 3
 
end

puts
puts "now, read that back:"
puts

IO.foreach("file_to_write"){|line| puts line}

#another way to write:
puts
puts '<< (the shovel operator) appends to file'

File.open("file_to_write", "a") do |filetwo|
 filetwo << "\nWrite" << " one " << "line!"
end

puts 'read again:'
puts


IO.foreach("file_to_write"){|line| puts line}
