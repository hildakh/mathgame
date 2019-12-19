class Questions
  attr_accessor :result, :num_one, :num_two
  
  def initialize
    @num_one = rand(1...20)
    @num_two = rand(1...20)
    @result = num_one + num_two
  end
  
  def result_checker(answer)
    if result == answer
      return true
    else
      return false
    end
  end
  
  def print_question
    print "What is #{num_one} plus #{num_two}?"
  end

end