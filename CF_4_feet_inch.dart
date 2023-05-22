// Dart Class to convert given distance in appropriate feet and inches

class DistanceConverter {
  int feet;
  int inches;

  DistanceConverter(this.feet, this.inches);

  void convertToFeetAndInches() {
    int totalInches = (feet * 12) + inches;

    int convertedFeet = totalInches ~/ 12;
    int convertedInches = totalInches % 12;

    print('Output: $convertedFeet feet and $convertedInches inch');
  }
}

void main() {
  DistanceConverter converter = DistanceConverter(5, 15);
  converter.convertToFeetAndInches(); // Output: 6 feet and 3 inch
}
