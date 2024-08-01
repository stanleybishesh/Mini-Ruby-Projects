require './modules/BubbleSort.rb'

class Sorter
    include BubbleSort

    def initialize

    end

    def sort(data)
        bubbleSort(data)
    end
end