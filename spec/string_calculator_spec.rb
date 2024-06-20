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
    end
end
