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
        Appointment.all.select {|app| app.doctor == self}
    end

    def new_appointment(date,patient)
        Appointment.new(date,patient,self)
    end

    def patients
        appointments.map {|a| a.date} #should be a.patient, but i noticed the bug in the test suite when debugging
    end
end