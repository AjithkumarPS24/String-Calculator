require './lib/string_calculator'

describe StringCalculator do
  describe '#add' do
    let(:string_calculator) { StringCalculator.new }

    it 'returns zero for empty string' do
      expect(string_calculator.add("")).to eql(0)
    end

    it 'returns zero for non-empty string (whitespace)' do
      expect(string_calculator.add(" ")).to eql(0)
    end

    it 'returns sum of all positive numbers' do
      expect(string_calculator.add("5, 3, 6")).to eql(14)
    end
  end
end
