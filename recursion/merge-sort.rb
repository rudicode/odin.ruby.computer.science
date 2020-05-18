def merge_arrays(left, right)
  merged_array = []

  while left.length > 0 && right.length > 0
    left.first <= right.first ? merged_array << left.shift : merged_array << right.shift
  end

  while left.length > 0 do merged_array << left.shift end
  while right.length > 0 do merged_array << right.shift end
  merged_array
end

def merge_sort(array)
  return array if array.length <= 1

  index_half  = array.length/2
  array_left  = array[0..index_half-1]
  array_right = array[index_half..-1]

  merge_arrays(merge_sort(array_left), merge_sort(array_right))
end

unsorted = 20.times.map{rand(1..300)}
puts"\n"
print "Unsorted: "
puts unsorted.join(', ')

sorted = merge_sort(unsorted)

print "\nSorted:   "
puts sorted.join(', ')
