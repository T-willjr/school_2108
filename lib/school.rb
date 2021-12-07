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
    @date_time = Time.parse(@start_time)
    @date_time = @date_time + @hours_to_secs
    @date_time = @date_time.strftime("%H:%M")
  end

  def is_full_time?
    return true if @hours_in_school_day > 4
    false
  end

  def standard_student_names
    @student_names.map { |student| student.capitalize }
  end

  def convert_end_time_to_clock_time
    end_time
    @clock_time = Time.parse(@date_time)
    @clock_time.strftime("%l:%M").strip
  end
end
