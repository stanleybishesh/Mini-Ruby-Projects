module ViewAttendance
    def view_attendance
        list_classes
        print "\nSelect class by number: "
        class_index = gets.chomp.to_i - 1
        selected_class = @data["classes"][class_index]

        if @data["attendance_records"][selected_class]
        puts "\nAttendance for #{selected_class}:"
        @data["attendance_records"][selected_class].each do |student, present|
            status = present ? "Present" : "Absent"
            puts "#{student}: #{status}"
        end
        else
        puts "\nNo attendance records found for #{selected_class}."
        end
    end
end