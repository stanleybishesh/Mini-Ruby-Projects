require './classes/attendance_management.rb'

system = AttendanceManagementSystem.new

loop do
    puts "\n********************************** ATTENDANCE MANAGEMENT SYSTEM ********************************"
    puts "                                                                        -Bishesh Ganesh Shrestha"
    puts "Options: "
    puts "1. Add Student"
    puts "2. List Students"
    puts "3. Add Class"
    puts "4. List Classes"
    puts "5. Mark Attendance"
    puts "6. View Attendance"
    puts "7. Clear All"
    puts "8. Exit"
    print "Choose an option: "
    choice = gets.chomp.to_i

    case choice
    when 1
        system.add_student
    when 2
        system.list_students
    when 3
        system.add_class
    when 4
        system.list_classes
    when 5
        system.mark_attendance
    when 6
        system.view_attendance
    when 7
        system.clear_all_records
    when 8
        puts "Exiting..."
        break
    else
        puts "Invalid choice. Please try again."
    end
end