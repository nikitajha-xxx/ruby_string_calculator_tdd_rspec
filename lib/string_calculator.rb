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
        if(isCustomDelimiterPresent(numbers))
            return split_numbers_with_custom_delimiters(numbers)
        end
        return split_numbers_with_comma_or_new_line(numbers)
    end

    def isCustomDelimiterPresent(numbers)
        return numbers.start_with?("//")
    end

    def split_numbers_with_custom_delimiters(numbers)
        matched_str = numbers.match(/\/\/(.)\n(.*)/)
        delimiter = matched_str[1]
        new_num = matched_str[2]
        return new_num.split(delimiter)
    end

    def split_numbers_with_comma_or_new_line(numbers)
        return numbers.split(/[,,\n]/)
    end
end

