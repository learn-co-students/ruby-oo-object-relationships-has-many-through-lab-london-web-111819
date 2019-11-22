class Patient

    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment (doctor,date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.filter {|appointment| appointment.patient == self }
    end

    def doctors
        Appointment.all.map {|appointment| appointment.doctor}

    end




end