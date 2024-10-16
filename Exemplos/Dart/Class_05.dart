main() {
  var employee = Employee(); // default constructor called

  employee.setName = "john";
  print(employee.getName);
}

class Employee {
  String name = "john";
  Employee() {}

  set setName(String name) {
    this.name = name;
  }

  String get getName {
    return this.name;
  }
}