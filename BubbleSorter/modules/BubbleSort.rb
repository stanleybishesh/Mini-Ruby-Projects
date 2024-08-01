module BubbleSort
    def bubbleSort(array)
        for i in (0..array.length-2)
            for j in (0..array.length-i-2)
                if array[j]>array[j+1]
                    temp = array[j]
                    array[j] = array[j+1]
                    array[j+1] = temp
                end
                j += 1
            end
            i += 1
        end
    end
end