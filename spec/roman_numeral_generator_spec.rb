RSpec.describe RomanNumeralGenerator do
  describe '.generate' do
    subject(:generate) { RomanNumeralGenerator.generate(number) }
    let(:number) { 10 }

    it 'is expected to generate a roman numeral from the given number' do
      expect(generate).to eq('X') 
    end
  end
end
