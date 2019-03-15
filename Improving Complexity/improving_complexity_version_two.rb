class Two
  def version_two(arrays)
    combined_array = Array.new
    arrays.each do |array|
        puts array
        combined_array.concat(array)
    end
    return quick_sort(combined_array)
    end
    def quick_sort(array, from=0, to=nil)
        if array.length <= 1
          return array
        end
      
        to = array.length-1 if to == nil
        return array if from >= to
      
        pivot = array.delete_at(array.length-1)
        left = Array.new 
        right = Array.new 
      
        array.each do |x| 
          if x >= pivot
            right << x
          else
            left << x 
          end
        end
        test = quick_sort(left).flatten, pivot, quick_sort(right).flatten
          return test.flatten!
      end
end
test = Two.new
arrays = Array.new
arrays.push([2, 9, 21, 33, 47])
arrays.push([12, 48, 2, 28, 16])
arrays.push([20, 38, 7, 29, 11])
arrays.push([34, 42, 19, 43, 38])
arrays.push([30, 31, 15, 23, 43])
arrays.push([41, 33, 14, 4, 27])
arrays.push([40, 25, 21, 1, 15])
arrays.push([39, 22, 15, 37, 26])
arrays.push([24, 20, 12, 50, 16])
arrays.push([28, 9, 45, 23, 11])
arrays.push([21, 47, 37, 29, 32])

# puts "this is arrays before function call\n#{arrays}\n"
answer = test.version_two(arrays)
puts "This is answer\n#{answer}\n"
sorted_array = [1, 2, 2, 4, 7, 9, 9, 11, 11, 12, 12, 14, 15, 15, 15, 16, 16, 19, 20, 20, 21, 21, 21, 22, 23, 23, 24, 25, 26, 27, 28, 28, 29, 29, 30, 31, 32, 33, 33, 34, 37, 37, 38, 38, 39, 40, 41, 42, 43, 43, 45, 47, 47, 48, 50]

puts answer === sorted_array ? 'Test case passed' : 'Test case failed'

