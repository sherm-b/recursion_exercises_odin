def merge_sort(arr)
    if arr.length < 2
        return arr
    else
        left = merge_sort(arr[0..arr.length/2 - 1])
        right = merge_sort(arr[arr.length/2..arr.length - 1])
        sorted = []

        until left.empty? || right.empty?
            if left[0] <= right[0]
                sorted << left.shift
            else
                sorted << right.shift
            end
        end
    end
    sorted + left + right
end

merge_sort [1, 4, 6, 9, 3, 5]