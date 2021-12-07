require 'time'
require 'pry'

class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(time, hours)
    @start_time = time
    @hours_in_school_day = hours
    @student_names = []
    @hours_to_secs = hours * 3600
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    ct = Time.parse(@start_time)
    ct = ct + @hours_to_secs
    ct = ct.strftime("%H:%M")
  end

  def is_full_time?
    return true if @hours_in_school_day > 4
    false
  end
end
