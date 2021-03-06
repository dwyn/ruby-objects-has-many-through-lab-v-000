class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
    @doctor = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect{|appt| appt.doctor}
  end
end
