def bubble_sort(arr, level = 0)
  last_index_to_swap = arr.length - 1
  has_swapped = false

  (last_index_to_swap - level).times do |i|
    next_i = i+1
    next_n = arr[next_i]
    n = arr[i]

    if n > next_n
      has_swapped = true
      arr[i] = next_n
      arr[next_i] = n
    end
  end

  return arr if arr.length <= level || !has_swapped 
  
  bubble_sort(arr, level+1)
end

puts bubble_sort([4, 3, 78, 2, 0, 2])