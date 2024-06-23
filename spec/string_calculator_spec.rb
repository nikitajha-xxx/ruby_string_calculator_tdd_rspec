require './lib/string_calculator.rb'

describe StringCalculator do 

    context "Given a String with numbers and add those numbers" do 

        #Case 1 : Handle Empty String Input by returning 0 as Output
        it "can return output as 0 when string is empty" do
            calc = StringCalculator.new
            sum = calc.add("")
            expect(sum).to eql(0)
        end

        #Case 2 : Handle String with only 1 number by returning the number itself
        it "can return output as the number itself when string has only 1 number" do
            calc = StringCalculator.new
            sum = calc.add("1")
            expect(sum).to eql(1)
        end

        #Case 3 : Handle String with only 2 numbers by returning the addition of the two
        it "can return output as the addition of the two numbers present in the string" do
            calc = StringCalculator.new
            sum = calc.add("1,2")
            expect(sum).to eql(3)
        end

        #Case 4 : Handle String with only n numbers by returning the addition of all the numbers
        it "can return output as the addition of the n numbers of integer present in the string" do
            calc = StringCalculator.new
            sum = calc.add("1,2,3")
            expect(sum).to eql(6)
        end

        #Case 5 : Handle String with new lines between numbers instead of commas
        it "can return output as the addition of the n numbers of integer present when new line is present in place of comma" do
            calc = StringCalculator.new
            sum = calc.add("1\n2,3")
            expect(sum).to eql(6)
        end

        #Case 6 : Handle String with Custom delimiters that starts with //
        it "can return output as the addition of the n numbers of integer present when the string starts with // and a custom delimiter is present " do
            calc = StringCalculator.new
            sum = calc.add("//;\n1;2")
            expect(sum).to eql(3)
        end

        #Case 7 : Handle String with a Negative Number by throwing an exception
        it "can raise an error exception for string that has a negative number" do
            calc = StringCalculator.new
            begin
                calc.add("1,-2,3")
                fail "Negative Number Exception"
            rescue RuntimeError => e
            end
        end
    end
end
