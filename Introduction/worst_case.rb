class WorstCase
    def worst_case(n)
        print "Worst casenario for linear search with a collection size of #{n} is #{n}\n"
    end

    def test_case()
        for n in (1..10)
            worst_case(n)
        end
    end
end
collection = WorstCase.new
collection.test_case()
