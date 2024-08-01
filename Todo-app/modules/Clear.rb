module Clear
    T_FILE_PATH = "./Todo-tasks.txt"
    C_FILE_PATH = "./Completed-tasks.txt"

    def clear
        todoTasks=[]
        completedTasks=[]
        File.open(T_FILE_PATH, 'w') { |file| file.puts todoTasks }
        File.open(C_FILE_PATH, 'w') { |file| file.puts completedTasks }
        puts "\n All Tasks Cleared successfully."
    end
end