class Person
  def self.breathe
    puts "inhale and exhale"
  end
end

p Person.ancestors

class Baby < Person
  def self.speak
    puts "Goo Goo Ga Ga"
  end
end

p Baby.breathe

my_baby = Baby.new