class FizzBuzzGame
  def self.sequence(start_at:, end_at:)
    (start_at..end_at).map { |number| print number }
  end

  def self.print(number)
    result = ""
    result.concat fizz_filter(number)
    result.concat buzz_filter(number)
    
    result.empty? ? number : result
  end

  private

  def self.fizz_filter(number)
    number % 3 == 0? 'Fizz' : ''
  end

  def self.buzz_filter(number)
    number % 5 == 0 ? 'Buzz' : ''
  end
end
