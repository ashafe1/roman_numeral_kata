require_relative '../roman_numeral_generator'

RSpec.describe RomanNumeralGenerator do
  describe '.generate' do
    subject(:generate) { RomanNumeralGenerator.generate(number) }
    let(:number) { 10 }

    it 'is expected to generate a roman numeral from the given number' do
      expect(generate).to eq('X') 
    end

    context 'number is 5' do
      let(:number) { 5 }
      it { is_expected.to eq('V') }
    end

    context 'number is 100' do
      let(:number) { 100 }
      it { is_expected.to eq('C') }
    end

    context 'number is 1000' do
      let(:number) { 1000 }
      it { is_expected.to eq('M') }
    end
  end
end
