class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        # if this exists
        if @roster[grade]
        else 
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(year)
        # access info in array
        @roster[year]
    end

    def sort
        # iterate and sort array in hash
        sorted_students_in_hash = {}
        @roster.each do |grade, name|
            sorted_students_in_hash[grade] = name.sort
        end
        sorted_students_in_hash
    end

end