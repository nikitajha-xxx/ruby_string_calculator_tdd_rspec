class StringCalculator 
    def add(string_numbers)
        if(string_numbers.empty?)
            return 0
        elsif(string_numbers.include?(","))
            numbers = string_numbers.split(",")
            return (numbers[0].to_i + numbers[1].to_i)
        else
            return string_numbers.to_i
        end
    end
end
