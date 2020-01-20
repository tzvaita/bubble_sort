def bubble_sort(array)
   # swapped = true
    n = array.length
   # while swapped
       # swapped = false
        (n-1).times do |x|
            if array[x] > array[x + 1]
                array[x], array[x + 1] = array[x + 1], array[x]
                puts array
              #  swapped = true
            end
        end
    #end
        
end

arr = [2,15,3,9,34,25]

bubble_sort(arr)

p arr