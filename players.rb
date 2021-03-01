#this class will keep track of the two players lives

class Players

attr_accessor :name, :lives

def initialize(name)
@name = name
@lives = 3
end

#use ? when something returns a boolean value
def alive?
  @lives != 0
end

def dead?
  @lives == 0
end

def wrong_answer
  @lives -= 1
end

end
