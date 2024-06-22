class StringCalculator 
    def add(string_numbers)
        if(string_numbers.empty?)
            return 0
        elsif(string_numbers.include?(","))
            return string_numbers.split(/[,,\n]/).map(&:to_i).reduce(:+)
        else
            return string_numbers.to_i
        end
    end
end
