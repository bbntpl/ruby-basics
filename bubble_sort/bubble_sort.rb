def bubble_sort(arr, level = 0)
  largest_n = arr[0]
  largest_n_index = 0

  for i in arr do
    if i == arr.length - level
      break;
    end

    next_i = i+1
    next_n = arr[next_i]

    if largest_n < next_n
      largest_n = next_n
      largest_n_index = next_i
    end
  end

  updated_arr = delete_by_index(arr, largest_n_index)
  updated_arr.push(largest_n)

  puts "largest n index: #{largest_n_index}, largest n: #{largest_n},level: #{level}"

  if arr.length <= level
    return arr
  else 
    return bubble_sort(updated_arr, level+1)
  end
end

def delete_by_index(arr, index)
  arr.delete_at(index)
  arr
end

bubble_sort([2,1])