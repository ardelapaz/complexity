class Two
  def version_two(arrays)
        combined_array = Array.new
            arrays.each do |array|
                combined_array.concat(array)
            end
        end
        sorted_array = [combined_array.delete_at(combined_array.length-1)]
    
        combined_array.each do |val, i|
          while i < sorted_array.length
              if val <= sorted_array[i]
                    sorted_array.insert(i,val)
                  break
              elsif i == sorted_array.length - 1
                  sorted_array << val
                  break
              end
          end
      end
          sorted_array 
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
test.version_two(arrays)

