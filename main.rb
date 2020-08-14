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

my_array = [23, 43, 1, 9, 82, 51];

p bubble_sort(my_array);


def bubble_sort_by(array)
  unsorted = true
  while unsorted
    (0..(array.length - 2)).each do |index|
      if yield(array[index], array[index + 1]).negative?
        array[index], array[index + 1] = [array[index + 1], array[index]]
      end
    end
     unsorted = false
  end
  array
end

puts "\nResult of bubble_sort_by():"
  print(bubble_sort_by(['hi', 'hello', 'goodbye', 'hey!']) do |left, right|
    left.length - right.length
  end)

=begin
def bubble_sort_by(arr)
  i = 0
  arr_l = arr.length - 1
  while i <= arr_l
    if yield(arr[i], arr[i + 1]).negative?
      i += 1
    elsif yield(arr[i], arr[i + 1]).zero?
      i += 1
    elsif yield(arr[i], arr[i + 1]).positive?
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i = 0
    end

  end
  arr
end

p bubble_sort_by([hi, hello, hey]) do |left, right|
  left.length - right.length
end


def bubble_sort(arr)
    arr_length = arr.length
    return arr if arr_length <= 1

    loop do 

        swapped = false

        (arr_length-1).times do |counter|
            if arr[counter] > arr[counter + 1]
                arr[counter], arr[counter + 1] = arr[counter + 1], arr[counter]
                swapped = true

            end
        end

        break if not swapped
    end

    arr
end

test_array = [25, 54, 8, 4, 46, 1, 7]

puts bubble_sort(test_array)
=end

