class Developer {
  final String name;
  final int experienceYears;

  // Constructor with some syntactic sugar
  // a constructor creates a new instance of the class
  Developer(this.name, this.experienceYears) {}

  int get startYear =>
      DateTime.now().year - experienceYears; // read-only property

  void describe() {
    print(
        'The developer is $name. They have $experienceYears years of experience so they started development back in $startYear.');
    if (startYear > 3) {
      print('They have plenty of experience');
    } else {
      print('They still have a lot to learn');
    }
  }
}

void main() {
  Developer peter = Developer("Peter", 12);
  Developer aaron = Developer("Aaron", 2);

  peter.describe();

  aaron.describe();
}
