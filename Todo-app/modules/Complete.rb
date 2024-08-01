module Complete
    T_FILE_PATH = "./Todo-tasks.txt"
    C_FILE_PATH = "./Completed-tasks.txt"

    def completed(taskIndex)
        taskIndex = taskIndex - 1
        tasks = File.open(T_FILE_PATH).readlines
        completedTask = tasks[taskIndex]
        File.open(C_FILE_PATH, "a") do |f|
            f.puts completedTask
        end
        remainingTasks = tasks.reject { |line| line == tasks[taskIndex] }
        File.open(T_FILE_PATH, "w") do |f|
            f.puts remainingTasks
        end
    end
end
