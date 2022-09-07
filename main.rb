def merge_sort(arr)
  # base
  if arr.length < 2
    return arr
  else
    # recursive
    half = arr.length / 2
    left = merge_sort(arr[0...half])
    right = merge_sort(arr[half...arr.length])
   
    # merge
    new_arr = []
    until left.empty? || right.empty?
      if left[0] < right[0]
          new_arr << left.shift
      elsif left[0] > right[0]
        new_arr << right.shift
      end
    end
  end
  new_arr + left + right
end

array = [2, 3, 6, 1, 4, 7]

p merge_sort(array)