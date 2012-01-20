#server communication

require "socket"

myserver = TCPserver.new('localhost',0)
sockaddr = myserver.addr

# print to screen connection info (so you can play with the server
puts "Echo server running on #{sockaddr.join(':')}"

while true
 Thread.start(myserver.accept) do |sock|
  puts ("#{sock} connected at #{Time.now}")

  while sock.gets
   sock.write($_)
   puts "User entered: #{$_}"
  end

  puts("#{sock} disconnected at #{Time.now}")
  s.close
 end
end

# in order to get anything out of this, open another terminal and run telnet
#then type 'open localhost {portnumber}'

