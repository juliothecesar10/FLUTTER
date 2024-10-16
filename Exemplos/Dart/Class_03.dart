main() {
  var employee = Employee(); // default constructor called
  var employee1 = Employee.changeNameTitle("Mark"); // Named constructor called

  print(employee.name);
  print(employee1.name);
}

class Employee {
  String name = "john";
  Employee() {}

  Employee.changeNameTitle(String name) {
    this.name = "Hello "+ name;
  }
}