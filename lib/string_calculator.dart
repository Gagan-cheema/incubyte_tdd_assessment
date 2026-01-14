class StringCalculator {
  int add(String numbers) {
    // If input string is empty, return 0
    if (numbers.isEmpty) return 0;

    // Default delimiters: comma and new line
    String delimiterPattern = '[,\n]';

    // This will contain only the numbers part of the input
    String numbersPart = numbers;

    // Check if a custom delimiter is specified
    // Format: "//[delimiter]\n[numbers]"
    if (numbers.startsWith("//")) {
      // Split input into delimiter part and numbers part
      final lines = numbers.split('\n');

      // Extract delimiter by removing the "//"
      final delimiter = lines[0].substring(2);

      // Escape delimiter for safe use in RegExp
      delimiterPattern = RegExp.escape(delimiter);

      // The actual numbers are on the second line
      numbersPart = lines[1];
    }

    // Split numbers using the selected delimiter(s)
    final parts = numbersPart.split(RegExp(delimiterPattern));

    // Convert all parts to integers
    final nums = parts.map(int.parse).toList();

    // Return the sum of all numbers
    return nums.reduce((a, b) => a + b);
  }
}
