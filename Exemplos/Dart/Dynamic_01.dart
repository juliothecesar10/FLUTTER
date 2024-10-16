void main() {
  dynamic variable_name = 11;
  dynamic variable_name1 = 11.23;
  dynamic variable_name2 = "abc";
  print(variable_name.runtimeType); //int
  print(variable_name is int); //true
  print(variable_name is dynamic); //true

  ;
  print(variable_name1.runtimeType); //double
  print(variable_name1 is double); //true
  print(variable_name1 is dynamic); //true

  print(variable_name2.runtimeType); //String
  print(variable_name2 is String); //true
  print(variable_name2 is dynamic); //true

  // assign to different types
  variable_name1 = "abc1";
  print(variable_name1.runtimeType); //String
  print(variable_name1 is double); //false
  print(variable_name1 is dynamic); //true
}
