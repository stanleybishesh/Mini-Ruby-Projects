module MarkAttendance
    def mark_attendance
        list_classes
        print "\nSelect class by number: "
        class_index = gets.chomp.to_i - 1
        selected_class = @data["classes"][class_index]

        @data["attendance_records"][selected_class] ||= {}
        puts "\nMarking attendance for #{selected_class}"
        list_students
        @data["students"].each do |student|
            print "\nIs #{student} present? (y/n): "
            response = gets.chomp.downcase
            @data["attendance_records"][selected_class][student] = response == 'y'
        end
        save_data
    end
end