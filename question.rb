# question.rb

class Question
    attr_reader :number1, :number2

    # initialize and generate 2 random numbers, then assign them to instance variables
    def initialize
        @number1 = rand(1..20)
        @number2 = rand(1..20)
    end
end

    # correct? method will check to see if the provided answer matches the sum of the two nums
    def correct?
        answer == @number1 + @number2
    end
end