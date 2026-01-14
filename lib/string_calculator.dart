class StringCalculator {
  int add(String numbers) {
    // Handle empty string
    if (numbers.isEmpty) return 0;

    // Split by commas and new lines
    final parts = numbers.split(RegExp('[,\n]'));

    // Handle single number
    if (parts.length == 1) return int.parse(parts[0]);

    // Sum multiple numbers
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
