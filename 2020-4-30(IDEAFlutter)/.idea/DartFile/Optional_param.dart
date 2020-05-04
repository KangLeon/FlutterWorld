
void main () {

  printPerson("李四");
  printPerson("李四",age: 20);
  printPerson("Leon",age: 20,gender: "Male");
  printPerson("Leon",gender: "Male");

  printPerson2("JY");
  printPerson2("ky",18);
  printPerson2("jy",18,"Female");
}

printPerson(String name,{int age,String gender}) {
  print("name=$name,age=$age,gender=$gender");
}

printPerson2(String name,[int age, String gender]) {
  print("name=$name,age=$age,gender=$gender");
}