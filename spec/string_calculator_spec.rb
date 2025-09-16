require './lib/string_calculator'

describe StringCalculator do
  describe '#add' do
    it 'returns zero for empty string' do
      string_calculator = StringCalculator.new
      expect(string_calculator.add("")).to eql(0)
    end

    it 'returns zero for non-empty string (whitespace)' do
      string_calculator = StringCalculator.new
      expect(string_calculator.add(" ")).to eql(0)
    end
  end
end