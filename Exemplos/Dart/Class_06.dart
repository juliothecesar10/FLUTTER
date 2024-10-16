main() {
  var employee = Employee("Andrew");
  var employee1 = Employee("Mark");

  print(employee.name);// Andrew
  print(employee1.name); // Mark

}

class Employee {
  String name = "john";
  Employee(String name) {
    this.name = name;
  }
}