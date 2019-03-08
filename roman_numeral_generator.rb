class RomanNumeralGenerator
  attr_accessor :number
  private :number

  UnsupportedNumberError = Class.new(StandardError)

  def initialize(number)
    @number = number
  end

  def self.generate(number)
    new(number).generate
  end

  def generate
    if valid_number?
      calculate_numeral
    else
      fail UnsupportedNumberError,
        "Please provide an integer between 1 and 3999."
    end
  end

  private

  def valid_number?
    number.between?(1, 3999)
  end

  def calculate_numeral
    roman_numeral_combinations.each_with_object('') do |(key, symbol), string|
      quotient, @number = @number.divmod(key)
      string << symbol*quotient
    end
  end

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
