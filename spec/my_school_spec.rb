require './lib/school'
require 'pry'

RSpec.describe School do
  subject {school = School.new('9:00', 7)}
  it "can create an object" do


    expect(subject).to be_an_instance_of School
  end

  it "has a start time" do

    expect(subject.start_time).to eq("9:00")
  end

  it "shows hours in a school day" do

    expect(subject.hours_in_school_day).to eq(7)
  end

  it "can hold a list of names" do

    expect(subject.student_names).to eq([])
  end

end
