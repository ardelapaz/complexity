def version_two(*arrays)
  combined_array = []
      arrays.each do |array|
          combined_array.concat(array)
      end
  end
  sorted_array = [combined_array.delete_at(combined_array.length-1)]

  for val in combined_array
      i = 0
      while i < sorted_array.length
        if val <= sorted_array[i]
          sorted_array.insert(i, val)
          break
        elsif i == sorted_array.length - 1
          sorted_array << val
          break
        end
        i+=1
      end
  end
  sorted_array
end