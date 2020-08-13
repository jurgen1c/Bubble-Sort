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

