=begin
An exaple of making a BASE CLASS from 2 seperate classes sharing someof the same
attributes.  In this example, even though the car class and the bike class share
the same attributes, It does not make sense to have the bike class inherit
attributes from the car class because they are essentially 2 different kind of
Vehicles, so it makes sense to create a brand new class called Vehicles, and have
both classes inherit from this BASE CLASS(another name for the main class that
other classes are inheriting from.)
=end

#Currently we have 2 classes (bike and car), which share some properties
#(initialize, brake, turn, accelarate)
class Car
  def initialize
    @speed = 0
    @direction = north
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def honk_horn
    puts "BEEEEEEEEEEEP!"
  end
end

class Bike
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def ring_bell
    puts "Ring ring!"
  end
end

#Now we add the Vehicle class and put in that class all methods shared by both
#the bike and car classes and have them inherit those methods from the Vehicle
#class, so our code will look like DRY:

class Vehicle #All new instances of bike and car can access these methods.
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle #Only new instances of Car will have access to honk_horn
  def honk_horn
    puts "BEEEEEEEEEEEP!"
  end
end

class Bike < Vehicle #Only new instances of Bike will have access to ring_bell
  def ring_bell
    puts "Ring ring!"
  end
end

#Good example of when to create a new base class!!!!!!!!!
