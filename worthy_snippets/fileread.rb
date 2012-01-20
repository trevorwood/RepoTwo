puts 'the following code opens, reads, writes, then closes, explicitly'
puts

readfile = File.open("file_to_read", "r") #filename, opentype
readfile.each_line{|line| puts line}
readfile.close #don't forget to close opened files!!!

puts
puts 'read, write in a block, with end as file close'
puts

File.open("file_to_read") do |file|
 file.each_line {|line| puts line}
end

puts
puts 'Now, one line read, write'
puts

IO.foreach('file_to_read') {|line| puts line}
