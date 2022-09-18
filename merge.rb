def merge_sort(arr)
    n = arr.length
    if n <=1
        return arr
    end
    half = (n/2).round

    left = arr.take(half)
    right = arr.drop(half)


    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)

    merge(sorted_left, sorted_right)
  end

def merge(left_array, right_array)
    if left_array.empty?
        return right_array
    end

    if right_array.empty?
        return left_array
    end

    smallest = if left_array.first <= right_array.first
        left_array.shift
    else 
        right_array.shift
    end
    recursive = merge(left_array, right_array)

    p [smallest].concat(recursive)
end
