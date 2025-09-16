class StringCalculator
  def add(numbers_string)
    return 0 if numbers_string.strip.empty?

    if numbers_string.start_with?("//")
      delimiter, numbers_string = numbers_string[2..].split("\n", 2)
      parts = numbers_string.split(delimiter)
    else
      parts = numbers_string.split(/[\s,]+/)
    end

    parts.map(&:to_i).sum
  end
end