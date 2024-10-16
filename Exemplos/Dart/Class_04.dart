main() {
  var employee = Employee(); // default constructor called
  var employee1 = Employee.changeNameTitle("mark"); // Named constructor called

  print(employee.captilizeName());
  print(employee1.captilizeName());
}

class Employee {
  String name = "john";
  Employee() {}

  Employee.changeNameTitle(String name) {
    this.name = "Hello " + name;
  }

  String captilizeName() {
    return name[0].toUpperCase() + name.substring(1);
  }
}