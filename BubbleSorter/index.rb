require './classes/Sorter.rb'

sorter = Sorter.new

loop do
    puts "\n*********************BUBBLE SORTING*************************\n\n"
    print "Enter the array size: "
    n=gets.chomp.to_i
    print "Enter random numbers to sort in ascending order: "
    data = []
    for i in (0..n-1)
        data[i]=gets.chomp.to_i
    end
    sorter.sort(data)
    puts "Here you have your sorted array: "
    print data
    puts ""
    while true
        print "You want to continue? (y/n): "
        continue_choice = gets.chomp.downcase
        case continue_choice
        when "y"
            break
        when "n"
            exit
        else
            puts "Invalid choice. Please enter 'y' or 'n'."
            next
        end
    end
end