void main() {
  // Creating Object of the implementation class
  Lion lion = Lion();
  lion.displayType();
}

//  animal interface
class Animal {
  void displayType() {
    print("Animal");
  }
}

// Class Lion implementing Animal
class Lion implements Animal {
  @override
  void displayType() {
    print("Lion");
  }
}