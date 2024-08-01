module Display
    T_FILE_PATH = "./Todo-tasks.txt"
    C_FILE_PATH = "./Completed-tasks.txt"

    def displayTasks
        tasks = File.open(T_FILE_PATH).readlines
        tasks = tasks.map { |task| task.gsub("\n", "")}
        for i in (0..tasks.length-1)
            puts "[#{i+1}] #{tasks[i]}"
        end
    end

    def displayCompletedTasks
        tasks = File.open(C_FILE_PATH).readlines
        tasks = tasks.map { |task| task.gsub("\n", "")}
        for i in (0..tasks.length-1)
            puts "[#{i+1}] #{tasks[i]}"
        end
    end
end