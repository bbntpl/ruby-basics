def bubble_sort(arr, level = 0)
  last_index_to_swap = arr.length - 1
  (last_index_to_swap - level).times do |i|
    next_i = i+1
    next_n = arr[next_i]
    n = arr[i]

    if n > next_n
      arr[i] = next_n
      arr[next_i] = n
    end
  end

  return arr.length <= level ? arr : bubble_sort(arr, level+1)
end

def delete_by_index(arr, index)
  arr.delete_at(index)
  arr
end

puts bubble_sort([4, 3, 78, 2, 0, 2])