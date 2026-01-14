class StringCalculator {
  int add(String numbers) {
    // Handle empty string
    if (numbers.isEmpty) return 0;

    // Split by comma
    final parts = numbers.split(',');

    // Handle single number
    if (parts.length == 1) return int.parse(parts[0]);

    // Handle two comma separated numbers
    return int.parse(parts[0]) + int.parse(parts[1]);
  }
}
