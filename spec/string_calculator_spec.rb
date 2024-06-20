require './lib/string_calculator.rb'

describe StringCalculator do 

    #Case 1 : Handle Empty String Input by returning 0 as Input
    context "Given Empty String" do 
        it "returns output as 0" do
            calc = StringCalculator.new
            sum = calc.add("")
            expect(sum).to eql(0)
        end
    end
end
