class School
  attr_reader :start_time, :hours_in_school_day, :student_names
    def initialize(start_time, hours_in_school_day)
      @start_time = start_time
      @hours_in_school_day = hours_in_school_day
      @student_names = []
    end

    def add_student_name(name)
      @student_names << name
      @student_names.map! do |name|
        name.capitalize
      end
    end


    def end_time
      if self.hours_in_school_day == 7
        '16:00'
      else
        '12:00'
      end
    end

    def is_full_time?
      if self.hours_in_school_day >= 4
        true
      else
        false
      end
    end

end
