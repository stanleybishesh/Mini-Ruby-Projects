module Add
    FILE_PATH = "./Todo-tasks.txt"

    def add(task)
        array = []
        File.open(FILE_PATH, "r") do |f|
            f.each_line do |line|
                array.push(line)
            end
        end

        repeated_text=false
        for i in (0..array.length-1)
            if array[i].include?(task)
                repeated_text = true
            else
                repeated_text = false
                i+=1
            end
        end
        if repeated_text == false
            File.open(FILE_PATH, "a") do |f|
                f.puts task
            end
        else
            puts "\nTask is repeated !!"
        end
    end
end

