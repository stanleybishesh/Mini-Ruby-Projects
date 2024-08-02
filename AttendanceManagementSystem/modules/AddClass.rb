module AddClass
    def add_class
        print "\nEnter class name: "
        name = gets.chomp
        @data["classes"] << name
        save_data
        puts "\nClass '#{name}' added."
    end
end