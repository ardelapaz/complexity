def version_three(*arrays)
    combined_array = []
    combined_array.push(array.pop())
    sorted_array = [combined_array.delete_at(combined_array.length-1)]

    combined_array.each do |val, i|
        while i < sorted_array.length
            if val <= sorted_array[i]
0                sorted_array.insert(i,val)
                break
            elsif i == sorted_array.length - 1
                sorted_array << val
                break
            end
        end
    end
        sorted_array 
end