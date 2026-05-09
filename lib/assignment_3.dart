void main() {
  List<String> fruits = ["Apple", "Banana", "Mango"];


  fruits.add("Orange");
  print("\nAfter Add:");
  print(fruits);


  fruits.remove("Banana");
  print("\nAfter Remove:");
  print(fruits);

  print("\nAll Fruits:");
  for (String fruit in fruits) {
    print(fruit);
  }


  Map<String, dynamic> student = {
    "name": "Suresh",
    "age": 20,
    "course": "BCA"
  };

  print("\nOriginal Map:");
  print(student);

  student["city"] = "Surat";

  print("\nAfter Adding City:");
  print(student);

  student["age"] = 21;

  print("\nAfter Updating Age:");
  print(student);

  student.remove("course");

  print("\nAfter Removing Course:");
  print(student);
  print("\nStudent Name: ${student["name"]}");

}
