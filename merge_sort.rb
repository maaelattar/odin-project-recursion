def merge_sort(array)
  length = array.length
  return array if length <= 1
  left = array[0, (length / 2)]
  right = array[(length / 2), length]
  left = merge_sort(left)
  right = merge_sort(right)
  merge(left, right)
end

def merge(left, right)
  array = []
  while !left.empty? && !right.empty?
    if left[0] > right[0]
      array.push(right[0])
      right.delete_at(0)
    else
      array.push(left[0])
      left.delete_at(0)
    end
  end

  until left.empty?
    array.push(left[0])
    left.delete_at(0)
  end

  until right.empty?
    array.push(right[0])
    right.delete_at(0)
  end
  array
end
