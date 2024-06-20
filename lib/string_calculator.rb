class StringCalculator 
    def add(string_numbers)
        if(string_numbers.empty?)
            return 0
        else
            return string_numbers.to_i
        end
    end
end
