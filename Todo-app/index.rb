require './classes/TaskManager.rb'

def showTasks
    puts "\nTo Do Tasks: "
    TaskManager.showTasks
end

loop do
    puts "\n******************************** TO DO APPLICATION *******************************"
    puts "                                                          -Bishesh Ganesh Shrestha\n"
    puts "Operations:\n"
    puts "1. Add Task"
    puts "2. Delete Task"
    puts "3. Delete All Tasks"
    puts "4. Edit Task"
    puts "5. Mark A Task As Complete"
    puts "6. Display Remaining Tasks"
    puts "7. Display Completed Tasks"
    puts "8. Clear All"
    puts "9. Exit"
    print "Enter your choice (1-8): "

    choice = gets.chomp.to_i

    case choice
    when 1
        print "Enter the task: "
        task = gets.chomp
        TaskManager.addTask(task)
    when 2
        showTasks
        print "Enter the task ID to delete: "
        id = gets.chomp.to_i
        TaskManager.deleteTask(id)
        showTasks
    when 3
        TaskManager.deleteAllTasks
    when 4
        showTasks
        print "Enter the task ID to edit: "
        id = gets.chomp.to_i
        print "Enter the new task: "
        new_task = gets.chomp
        TaskManager.editTask(id, new_task)
        showTasks
    when 5
        showTasks
        print "Enter the task ID to mark as complete: "
        id = gets.chomp.to_i
        TaskManager.completedTask(id)
        puts "\nRemaining Tasks: "
        TaskManager.showTasks
        puts "\nCompleted Tasks: "
        TaskManager.showCompletedTasks
    when 6
        puts "\nRemaining Tasks: "
        TaskManager.showTasks
    when 7
        puts "\nCompleted Tasks: "
        TaskManager.showCompletedTasks
    when 8
        TaskManager.clearAll
    when 9
        exit
    else
        puts "\nInvalid choice. Please try again."
    end
end