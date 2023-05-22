/* 1.Display 50 Employee Data with  
-Id
-Name
-Gender
-Age
-Qualification
-Company name
-Designation
-Experience
-Salary
-Mobile Number 
with Factory Constructor.
*/

class employee {
  final int id; // ID
  final String name; // Name
  final String gend; // Gender
  final int age; // Age
  final String qual; // Qualification
  final String comp; // Company Name
  final String role; // Role
  final int exp; // Experience
  final int wage; // Salary
  final String mono; // Mobile Number

  employee(
      {required this.id,
      required this.name,
      required this.gend,
      required this.age,
      required this.qual,
      required this.comp,
      required this.role,
      required this.exp,
      required this.wage,
      required this.mono});

  getData() {
    print("Employee ID : $id");
    print("\t\tName : $name");
    print("\t\tGeder : $gend");
    print("\t\tAge : $age");
    print("\t\tQualification : $qual");
    print("\t\tCompany : $comp");
    print("\t\tRole : $role");
    print("\t\tExperience : $exp");
    print("\t\tSalary : $wage");
    print("\t\tMobile No. : $mono");
  }

  factory employee.data({required Map Data}) {
    return employee(
        id: Data['id'],
        name: Data['name'],
        gend: Data['gend'],
        age: Data['age'],
        qual: Data['qual'],
        comp: Data['comp'],
        role: Data['role'],
        exp: Data['exp'],
        wage: Data['wage'],
        mono: Data['mono']);
  }
}
