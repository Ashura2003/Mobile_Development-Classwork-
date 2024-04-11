class Teacher {
  final String? tId;
  final String? tFname;
  final String? tLname;
  final Country? country;

  Teacher({this.tId, this.tFname, this.tLname, this.country});

  Teacher teaCopyWith({
    String? tId,
    String? tFname,
    String? tLname,
    Country? country,
  }) {
    return Teacher(
      tId: tId ?? tId,
      tFname: tFname ?? tFname,
      tLname: tLname ?? tLname,
      country: country ?? country,
    );
  }

  void teacherDetails() {
    print(
        'Teacher Details \nID: $tId \nFirstname: $tFname \nLastname: $tLname \nCountry: $country');
  }
}

class Student {
  final String? stdId;
  final String? stdFname;
  final String? stdLname;
  //Relationship
  List<Teacher>? lstTeacher;

  Country? country;
  Student(
      {this.stdId,
      this.stdFname,
      this.stdLname,
      this.lstTeacher,
      this.country});

  Student stdCopyWith({
    String? stdId,
    String? stdFname,
    String? stdLname,
    List<Teacher>? lstTeacher,
    Country? country,
  }) {
    return Student(
      stdId: stdId ?? stdId,
      stdFname: stdFname ?? stdFname,
      stdLname: stdLname ?? stdLname,
      lstTeacher: lstTeacher ?? lstTeacher,
      country: country ?? country,
    );
  }

  void studentDetails() {
    print(
        'Student Details \nID: $stdId \nFirstname: $stdFname \nLastname: $stdLname \nTeacher List: $lstTeacher \nCountry: $country');
  }
}

class Country {
  final String? cId;
  final String? cName;

  Country({this.cId, this.cName});

  void countryDetails() {
    print('Country ID: $cId \nCountry Name: $cName');
  }
}

void main() {
  Country country = Country(cId: '1', cName: "Nepal");
  Country country2 = Country(cId: '3', cName: "China");
  Country country3 = Country(cId: '4', cName: "Japan");

  Teacher t1 =
      Teacher(tId: '101', tFname: 'Sanjiv', tLname: 'Rai', country: country);
  Teacher t2 = Teacher(
      tId: '102', tFname: 'Bhawani', tLname: 'Ghimire', country: country2);
  Teacher t3 = Teacher(
      tId: '103', tFname: 'Narayan', tLname: 'Chaudary', country: country3);

  List<Teacher> tlist = [];
  tlist.add(t1);
  tlist.add(t2);
  tlist.add(t3);

  Student std1 = Student(
      stdId: '1001',
      stdFname: 'Ram',
      stdLname: 'Thapa',
      lstTeacher: tlist,
      country: country);

  std1.studentDetails();
}
