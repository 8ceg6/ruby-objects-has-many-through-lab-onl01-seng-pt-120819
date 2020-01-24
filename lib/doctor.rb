require 'pry'
class Doctor
  attr_accessor :name, :patient
  
 @@all = []
  
  def initialize(name)
    @name = name
    @patient = patient 
    @@all << self 
  end 
  
  def self.all 
      @@all 
  end 
  
  def appointments 
      Appointment.all.select {|apt|apt.doctor == self}
  end 
  
  def new_appointment(patient, date)
      Appointment.new(date,patient,self)
  end 
  
  def patients
      appointments.map {|apt|apt.patient}
  end 
end 