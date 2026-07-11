class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0;
  }
}

class FullTimeEmployee extends Employee {
  double salary;

  FullTimeEmployee(String name, this.salary) : super(name);

  @override
  double calculateSalary() {
    return salary;
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked) : super(name);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee("สมชาย", 35000),
    PartTimeEmployee("สมหญิง", 150, 45),
    FullTimeEmployee("วิชัย", 42000),
    PartTimeEmployee("มาลี", 120, 30),
  ];
  
  for (var emp in employees) {
    print("พนักงาน: ${emp.name}, เงินเดือนที่ได้รับ: ${emp.calculateSalary()} บาท");
  }
}
