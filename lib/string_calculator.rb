class StringCalculator
  def add(numbers_string)
    return 0 if numbers_string.strip.empty?

    numbers_string.split(",").map(&:to_i).sum
  end
end