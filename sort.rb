def bubble_sort(array)
  n = array.length - 1
  (array.length - 1).times do
    swapped = false
    n.times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped

    n -= 1
  end
  return array
end

def bubble_sort_by(array)
  n = array.length - 1
  (array.length - 1).times do
    swapped = false
    n.times do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped

    n -= 1
  end
  return array
end

print bubble_sort([3, 2, 1]), "\n"
print bubble_sort_by(%w[pato camion papatzul]) { |left, right| left.length - right.length }
