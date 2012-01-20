#custom exceptions

class GenderError < RuntimeError 
 attr :user_input

 def initialize(incoming)
  @user_input = incoming
 end
end

class Person
 def define_gender(gender)
  if (gender.upcase != 'FEMALE') && (gender.upcase != 'MALE')
   raise GenderError.new(gender), "Invalid gender!"
  end
 end

 def initialize(gender)
  self.define_gender(gender)
 rescue GenderError => bad
  puts "This isn't a known gender: " + bad.user_input
  raise
 end
end

chick = Person.new("female")
dude = Person.new("male")
weirdo = Person.new("weirdo")
