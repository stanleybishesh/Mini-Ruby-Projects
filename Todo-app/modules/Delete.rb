module Delete
    FILE_PATH = "./Todo-tasks.txt"

    def delete(taskIndex)
        taskIndex = taskIndex - 1
        tasks = File.open(FILE_PATH).readlines
        tasks.reject! { |line| line == tasks[taskIndex] }
        File.open(FILE_PATH, 'w') { |file| file.puts tasks }
        puts "\nTask deleted successfully !!"
    end

    def deleteAll
        tasks = []
        File.open(FILE_PATH, 'w') { |file| file.puts tasks }
        puts "\nAll tasks deleted successfully !!"
    end
end