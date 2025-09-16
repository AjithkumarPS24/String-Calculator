class StringCalculator
  def add(numbers_string)
    return 0 if numbers_string.strip.empty?

    numbers = parse_numbers(numbers_string)
    validate_no_negatives(numbers)
    numbers.sum
  end

  private

  def parse_numbers(numbers_string)
    if numbers_string.start_with?("//")
      delimiter, numbers_part = numbers_string[2..].split("\n", 2)
      parts = numbers_part.split(delimiter)
    else
      parts = numbers_string.split(/[\s,]+/)
    end
    parts.map(&:to_i)
  end

  def validate_no_negatives(numbers)
    negatives = numbers.select { |n| n < 0 }
    raise ArgumentError, "negative numbers not allowed: #{negatives.join(',')}" if negatives.any?
  end
end
