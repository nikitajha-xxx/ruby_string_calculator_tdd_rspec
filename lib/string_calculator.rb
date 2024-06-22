class StringCalculator 
    def add(string_numbers)
        if(string_numbers.empty?)
            return 0
        else
            split_num = split_numbers(string_numbers)
            return split_num.map(&:to_i).reduce(:+)
        end
    end

    def split_numbers(numbers)
        return numbers.split(/[,,\n]/)
    end
end

