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

  def new_appointment(patient, date)
    appointment_variable = Appointment.new(patient, date, self)
  end 
  
  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self 
    end 
  end 
  
  def patients 
    appointments.collect { |appointment| appointment.patient}
  end    
      
end  