module AddStudent
    def add_student
        print "\nEnter student name: "
        name = gets.chomp
        @data["students"] << name
        save_data
        puts "\nStudent '#{name}' added."
    end
end