void main() {
  // datatypes
  // int, double, String, boolean
  
  double num1=10.555;
  double num2 = 20.999;
//   print(num1+num2);
  
  String name = 'Tabish';
  String name2 = "Bob";
  
  bool isTrue = false;
//   print(isTrue);
  
//   print(name);
//   print(name2);
  
  // var dynamic
  var n = 'tabish';
//   print(n.runtimeType);
  
  dynamic n2 = 'bob';
//   print(n2);
  
  n2 = 10;
//   print(n2);  
  
  int num = 30;
  String n3 = 'alice';
  
  if (num > 10) {
    print('num $num is greater than 10');
    print('my name is $n3');
    
  } else {
    print('num $num is less than or equal to 10');
  }
  
  // loops - while loop, for loop, for each loop
  int count =1;
  while (count <10) {
  //  print (count);
    count++;
  }
  
  for(int i=1; i<=num; i++) {
    //print(i);
  }
  
  // list set map : collections
  // list is similar to arrays
  List<String> names = ['tabish', 'bob', 'alice', 'dua'];
  names[2] = 'jack';
  print(names);
  
  for (var i in names) {
   // print(i);
  }
  
  // set : it stores only the unique elememts
  Set<int> nums = {10,20,30,40};
 // print(nums);
  
  // map: its collection of key value pairs
  Map<String, int> fruits = {
    'apple': 20,
    'banana': 10,
    'grapes': 5,
  };
  
  fruits['banana'] = 100;

 print(fruits);
 
  
}
