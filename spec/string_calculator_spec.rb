require './lib/string_calculator.rb'

describe StringCalculator do 

    
    context "Given a String with numbers and add those numbers" do 

        #Case 1 : Handle Empty String Input by returning 0 as Output
        it "can return output as 0 when string is empty" do
            calc = StringCalculator.new
            sum = calc.add("")
            expect(sum).to eql(0)
        end
    end
end
