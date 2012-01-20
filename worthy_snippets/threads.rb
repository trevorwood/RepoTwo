#threads channel memory access, for multiple tasks at once

first = Thread.new() do
 myindex = 0
 while(myindex < 10):
  puts "Thread One!"
  sleep 3
  myindex += 1
 end
end

second = Thread.new() do
 myindex2 = 0
 while(myindex2 < 5):
  puts "Thread Two!"
  sleep 5
  myindex2 += 1
 end
end

third = Thread.new() do
 myindex3 = 0
 while(myindex3 < 2):
  puts "Thread Three!"
  sleep 10
  myindex3 += 1
 end
end

#join keeps all threads open until the last finishes
#you can pass an integer as param, for timeout seconds

first.join()
second.join()
third.join()

