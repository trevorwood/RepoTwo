#alternating threads.  spells 'everyone'

splitone = Thread.new {
 print 'e'; 
 Thread.pass; 
 print 'e';
 Thread.pass;
 print 'y';
 Thread.pass;
 print 'n';
 Thread.pass;
 puts;
}

splittwo = Thread.new {
 print 'v';
 Thread.pass;
 print 'r';
 Thread.pass;
 print 'o';
 Thread.pass;
 print 'e';
 Thread.pass;
}

splitone.join
splittwo.join

#also, stop and start

matey = Thread.new do
	puts "Permission to drop anchor, sir?"
	Thread.stop #class method, pauses thread
	puts "Aye-aye, cap\'m!"
	end

Thread.pass

puts "CAPTAIN: Aye, matey!"

matey.run #restarts stopped threads (instance scope)
matey.join

#ending threads, one way or another
homicide = Thread.new do
 	 while (1 == 1):
	  puts "Don't kill me!"
	  Thread.pass
	 end
	end

suicide = Thread.new do
	 puts "This is all meaningless!"
	 Thread.exit #explicitly ends it from within
	end

Thread.kill(homicide) #explicitly ends running thread

