//create a class named person with properties  fname, lname, age, address, phone number and person ID

class Person {
  String? fname;
  String? lname;
  int? age;
  String? address;
  String? phoneNumber;
  int? personID;

  //Constructor
  Person({
    required this.personID,
    this.fname,
    this.lname,
    this.age,
    this.address,
    this.phoneNumber,
  });

  //print details
  void personDetails() {
    print(
        "PersonID: $personID /nFirst Name: $fname \nLast Name: $lname \nAge: $age \nAddress: $address\nPhoneNumber: $phoneNumber \n");
  }

  //copy with previous values
  Person CopyWith({
    String? fname,
    String? lname,
    int? age,
    String? address,
    String? phoneNumber,
    int? personID,
  }) {
    return Person(
      fname: fname ?? fname,
      lname: lname ?? lname,
      age: age ?? age,
      address: address ?? address,
      phoneNumber: phoneNumber ?? phoneNumber,
      personID: personID ?? personID,
    );
  }
}

void main() {
  var info = Person(
    personID: 1,
    fname: 'Shreejan',
    lname: 'Maharjan',
    age: 20,
    address: 'Kalnki',
    phoneNumber: '9841243723',
  );

  Person info2 = info.CopyWith(personID: 2, fname: 'Ram', lname: 'Manandhar');
  Person info3 = info.CopyWith(personID: 3, fname: 'Shyam', lname: 'Shrestha');

  //adding all in a list
  List<Person> lstPerson = [];
  lstPerson.add(info);
  lstPerson.add(info2);
  lstPerson.add(info3);

  //display fname and address
  for (int i = 0; i < lstPerson.length; i++) {
    print('fname: ${lstPerson[i].fname} , address : ${lstPerson[i].address}');
  }

  //another way
  for (var p in lstPerson) {
    print('fname:${p.fname}, address: ${p.address}');
  }

  info.personDetails();
}
