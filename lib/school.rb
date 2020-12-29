class School
    attr_accessor :name, :roster


    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= [] #roster[grade] ||= [] #?
        roster[grade] << student #roster[grade] << student
    end
         

    def grade(student_grade)
        roster[student_grade]
    end
    
    def sort
        newlist = {}
        roster.each do |grade, students|
            newlist[grade] = students.sort
        end
        newlist
    end


end