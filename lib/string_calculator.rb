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
        if(numbers.start_with?("//"))
            matched_str = numbers.match(/\/\/(.)\n(.*)/)
            delimiter = matched_str[1]
            new_num = matched_str[2]
            return new_num.split(delimiter)
        end
        return numbers.split(/[,,\n]/)
    end
end

