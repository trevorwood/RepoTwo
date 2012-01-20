def bunkmethod
 mystring = "Chew on this!"
 garbage #garbage doesn't exist
 mystring.callitman
rescue NoMethodError => e:
 puts "Problem: "+e.to_s
rescue Exception:
 puts "you got problems in bunkmethod, son"
end

bunkmethod

#more specific exceptions help diagnose issues without tissues

def dance_a_jig
 "I'm a dancin'!"
 "Do si do!"
 more garbage #neither does this exist
 rebel_yell = "yee haw!".upcase!
rescue Exception
 print "I fell down, dang it! "
else
 print rebel_yell
ensure
 puts " That's all folks!"
end

dance_a_jig

#ensure executes no matter what. anything in else runs if no exception is rescued.  suggested closing open files, resources, etc

#retry is another keyword, that will retry a block of code if it doesn't work the first time.  can cause infinite loops if it doesn't fix itself

