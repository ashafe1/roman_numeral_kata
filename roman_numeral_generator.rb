class RomanNumeralGenerator

  def initialize(number)
    @number = number
  end

  def self.generate(number)
    new(number).generate
  end

  def generate
    roman_numeral_combinations.each_with_object('') do |(key, symbol), string|
      quotient, @number = @number.divmod(key)
      string << symbol*quotient
    end
  end

  private

  def roman_numeral_combinations
    {
      1_000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I',
    }
  end
end
