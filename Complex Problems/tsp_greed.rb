class Neighbor
    attr_reader :city, :neighbors
    def initialize(city, neighbors)
        @city = city
        @neighbors = neighbors
    end

    def nearest_neighbor(current_city_node, list, visited = [current_city_node.city])
        closest_city = nil # Initializing variables
        shortest_distance = 10000 # Random number to be overlapped to find the smallest distance

        if visited.size <= 4 # Loop through until all cities are checked
            list.each do |selected_city_node| # Check the list of cities to find the closest one
                if selected_city_node.city != current_city_node.city && !visited.include?(selected_city_node.city)
                    if visited.size == 4 # Recursion break point
                        visited << selected_city_node.city
                        start = visited.first 
                        visited << start # Optional, only threw in because I figured the optimal route had to loop back around to the start
                        puts "This is the fastest route from #{start}: #{visited}"
                        return visited
                    end
                    if selected_city_node.neighbors[current_city_node.city] < shortest_distance # If city is the closest to our current city, set selected city as the next closest city on optimal path
                        shortest_distance = selected_city_node.neighbors[current_city_node.city]
                        closest_city = selected_city_node
                    end
                end
            end
            visited << closest_city.city
            nearest_neighbor(closest_city, list, visited)
        end
    end


    chicago_neighbors = { "Seattle" => 2500, "Los Angeles" => 2000, "Ft. Lauderdale" => 1500, "New York" => 500 }
    seattle_neighbors = { "Chicago" => 2500, "Los Angeles" => 1000, "Ft. Lauderdale" => 3500, "New York" => 2000 }
    los_angeles_neighbors = { "Chicago" => 2000, "Seattle" => 1000, "Ft. Lauderdale" => 2500, "New York" => 3000 }
    ft_lauderdale_neighbors = { "Chicago" => 1500, "Seattle" => 3500, "Los Angeles" => 2500, "New York" => 2000 }
    new_york_neighbors = { "Chicago" => 500, "Los Angeles" => 3000, "Ft. Lauderdale" => 2000, "Seattle" => 2000 }

    $chicago = Neighbor.new("Chicago", chicago_neighbors)
    $seattle = Neighbor.new("Seattle", seattle_neighbors)
    $los_angeles = Neighbor.new("Los Angeles", los_angeles_neighbors)
    $ft_lauderdale = Neighbor.new("Ft. Lauderdale", ft_lauderdale_neighbors)
    $new_york = Neighbor.new("New York", new_york_neighbors)
    test = Neighbor.new(nil, nil)

    list = [$chicago, $seattle, $los_angeles, $ft_lauderdale, $new_york]
    test.nearest_neighbor($chicago, list)
    test.nearest_neighbor($seattle, list)
    test.nearest_neighbor($los_angeles, list)
    test.nearest_neighbor($ft_lauderdale, list)
    test.nearest_neighbor($new_york, list)

end