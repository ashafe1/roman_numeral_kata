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
    roman_numeral_symbols.fetch(number)
  end

  private

  def roman_numeral_symbols
    {
      1_000 => 'M',
      500 => 'D',
      100 => 'C',
      50 => 'L',
      10 => 'X',
      5 => 'V',
      1 => 'I',
    }
  end
end
