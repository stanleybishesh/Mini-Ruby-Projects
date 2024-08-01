module Edit
    FILE_PATH = "./Todo-tasks.txt"

    def edit(taskIndex,text)
        taskIndex = taskIndex - 1
        tasks = File.open(FILE_PATH).readlines()
        # tasks = File.open(FILE_PATH).readlines(&:chomp)
        tasks = tasks.map { |task| task.gsub("\n", "")}
        newTasks = tasks.reject {|line| line == tasks[taskIndex] }
        if !newTasks.include?(text)
            editedTasks = newTasks.insert(taskIndex,text)
            File.open(FILE_PATH,"w") do |f|
                f.puts editedTasks
            end
            puts "\nTask edited successfully."
        else
            puts "\nTask already exists. No changes made."
        end
    end
end