// ignore_for_file: recursive_getters



class Work {
  String? title;
  String? experience;
  String? employmentType;
  int? salary;
  String? description;
  String? postedDate;
  late List<Company> jobs;
  
  List<Company> get _jobs => jobs;

  Work(
      {required title,
      required experience,
      required employmentType,
      required salary,
      required description,
      required postedDate}) {
    this.title = title;
    this.experience = experience;
    this.employmentType = employmentType;
    this.salary = salary;
    this.description = description;
    this.postedDate = postedDate;
  }

  Work.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    experience = json['experince'];
    employmentType = json['employmentType'];
    salary = json['salary'];
    description = json['description'];
    postedDate = json['postedDate'];
    if (json['jobs'] != null) {
      jobs = <Company>[];
      json['jobs'].forEach((v) {
        jobs!.add(Company.fromJson(v));
      });
    }
  }

  

  
}

class Company {
  String? address;
  String? email;
  String? logo;
  int? phone;
  String? location;

  Company({this.address, this.email, this.location, this.logo, this.phone});

  Company.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    address = json['email'];
    address = json['logo'];
    address = json['phone'];
    address = json['location'];
  }
}
