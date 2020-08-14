# ---------------- Bubble Sort Method ------------------------ /

def bubble_sort(arr)
  swapped = false
  runs = 1
  until swapped
    swapped = true
    (0...arr.length - runs).each do |i|
      next unless arr[i] > arr[i + 1]

      swapped = false
      temp = arr[i]
      arr[i] = arr[i + 1]
      arr[i + 1] = temp
    end
    runs += 1
  end
  arr
end

my_array = [23, 43, 1, 9, 82, 51]

p 'Result of bubble_sort():'
p bubble_sort(my_array)

# ---------------------------- Bubble Sort By Method ------------------------------- /

def bubble_sort_by(array)
  unsorted = true
  while unsorted
    (0..(array.length - 2)).each do |index|
      if yield(array[index], array[index + 1]).positive?
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
    unsorted = false
  end
  array
end

puts "\nResult of bubble_sort_by():"
print(bubble_sort_by(['hi', 'hello', 'hey!']) do |left, right|
    left.length - right.length
  end)
