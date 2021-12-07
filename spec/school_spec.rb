require './lib/school'
require 'pry'

RSpec.describe School do
  context 'iteration-1' do
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

  context 'iteration-2' do
    subject {school = School.new('9:00', 7)}

    it "can add student names to list" do
      subject.add_student_name('Aurora')
      subject.add_student_name('tim')
      subject.add_student_name('megan')

      expect(subject.student_names).to eq(["Aurora", "tim", "megan"])
    end

    it "has an end time" do
      expect(subject.end_time).to eq("16:00")
    end
  end

  context 'iteration-3' do
    subject {school = School.new('9:00', 7)}

    it "is full time" do

      expect(subject.is_full_time?).to be true
    end

    it "capitalizes students names" do
      subject.add_student_name('Aurora')
      subject.add_student_name('tim')
      subject.add_student_name('megan')

      expect(subject.standard_student_names).to eq(["Aurora", "Tim", "Megan"])
    end
  end

  context "iteration-4" do
    subject {school = School.new('9:00', 7)}

    it "changes school time to 12 hour format" do

      expect(subject.convert_end_time_to_clock_time).to eq("4:00")
    end
    
  end
end
