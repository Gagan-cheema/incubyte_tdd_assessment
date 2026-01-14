class StringCalculator {
  int add(String numbers) {
    // Handle empty string
    if (numbers.isEmpty) return 0;
    // Handle single number
    return int.parse(numbers);
  }
}
