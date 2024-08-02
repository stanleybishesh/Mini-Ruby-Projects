module ListStudents
    def list_students
        puts "\nStudents:"
        @data["students"].each_with_index do |student, index|
        puts "#{index + 1}. #{student}"
        end
    end
end