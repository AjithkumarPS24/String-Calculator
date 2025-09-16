# String Calculator

This is a simple Ruby project implementing a `StringCalculator` class with an `add` method that sums numbers provided in a string.

## Features

- Returns 0 for empty or whitespace-only strings.
- Supports custom delimiters specified in the format `//[delimiter]\n[numbers]`.
- Splits numbers by commas, whitespace, or custom delimiters.
- Raises an error if negative numbers are included in the input.

## Usage

```ruby
require './lib/string_calculator'

calculator = StringCalculator.new
result = calculator.add("1, 2, 3")  # returns 6
```

## Running Tests

This project uses RSpec for testing. To run the tests:

```bash
rspec spec/string_calculator_spec.rb
```
