def bubble_sort(array)
  n = array.length

  (n - 1).times do
    (0..n-2).each do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end

  array
end

puts bubble_sort([4,3,78,2,0,2])