// classes can be used to create user defined datatypes
class BioData {
  String name;
  int age;
  int age2;
  BioData(this.name, this.age, this.age2);
  
  void getData() {
    print('Name: $name');
    print('Age: $age');
    print('Age2: $age2');
  }
  
  int getSumOfAges() {
    return age+age2;
  }
}

class Vehicle {
  String model;
  int price;
  
  Vehicle(this.model, this.price);
  
  void printData(){
    print(model);
    print(price);
  }
}


class Car extends Vehicle {
  int year;
  
  Car(String model, int price, this.year): super(model, price);
  
  @override
  void printData() {
     super.printData();
     print(year);
   }
} 

void main() {
 Car c1 = Car("BMW X3", 30000, 2022);
 c1.printData();
  
  
  
  
 
//  String name = "Tabish";
  
//  p(num1);
//   p(num2);
//   p(name);
  
}
