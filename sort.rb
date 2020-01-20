
def bubble_sort(array)
  n = array.length - 1
  (array.length-1).times {
    swapped = false
    n.times { |i|
      if array[i] > array[i+1]
        array[i] , array[i+1] = array[i+1], array[i] 
        swapped = true
      end
    }
    break unless swapped
    n -= 1
  }
  return array
end

def bubble_sort_by(array)
  n = array.length - 1
  (array.length-1).times {
    swapped = false
    n.times { |i|
      if yield(array[i] , array[i+1]) > 0
        array[i] , array[i+1] = array[i+1], array[i] 
        swapped = true
      end
    }
    break unless swapped
    n -= 1
  }
  return array
end
  



print bubble_sort([3,2,1]) , "\n"
print bubble_sort_by(["pato", "camion", "papatzul"]) {|left, right| left.length - right.length}
