class RomanNumeralGenerator
  attr_reader :number
  private :number

  def initialize(number)
    @number = number
  end

  def self.generate(number)
    new(number).generate
  end

  def generate
    'X'
  end
end
