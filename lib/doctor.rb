require 'pry' 
class Doctor 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def appointments
    Appointment.all.select{|info| info.doctor == self}
 #   binding.pry
  end 
  
  
  
  
  
end 