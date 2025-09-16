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

    it 'returns the sum when numbers are separated by newlines' do
      expect(string_calculator.add("1\n2,3")).to eql(6)
    end

    it 'returns the sum when numbers are separated by different delimiters' do
      expect(string_calculator.add("//;\n1;2;3")).to eql(6)
    end

    it 'raises an exception when numbers are negative' do
      expect { string_calculator.add("1,-2,3") }
        .to raise_error(ArgumentError, "negative numbers not allowed: -2")
    end
  end
end
