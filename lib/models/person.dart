// To parse this JSON data, do
//
//     final personModel = personModelFromJson(jsonString);

import 'dart:convert';

List<PersonModel> personModelFromJson(String str) => List<PersonModel>.from(json.decode(str).map((x) => PersonModel.fromJson(x)));

String personModelToJson(List<PersonModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PersonModel {
    int id;
    String fName;
    String lName;
    int age;
    int score;
    bool isADevoloper;
    Phone phone;

    PersonModel({
        required this.id,
        required this.fName,
        required this.lName,
        required this.age,
        required this.score,
        required this.isADevoloper,
        required this.phone,
    });

    factory PersonModel.fromJson(Map<String, dynamic> json) => PersonModel(
        id: json["id"],
        fName: json["f_name"],
        lName: json["l_name"],
        age: json["age"],
        score: json["score"],
        isADevoloper: json["isADevoloper"],
        phone: Phone.fromJson(json["phone"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "f_name": fName,
        "l_name": lName,
        "age": age,
        "score": score,
        "isADevoloper": isADevoloper,
        "phone": phone.toJson(),
    };
}

class Phone {
    The0 the0;
    The0 the2;
    The0 the3;
    List<String> skill;
    List<Education> education;

    Phone({
        required this.the0,
        required this.the2,
        required this.the3,
        required this.skill,
        required this.education,
    });

    factory Phone.fromJson(Map<String, dynamic> json) => Phone(
        the0: The0.fromJson(json["0"]),
        the2: The0.fromJson(json["2"]),
        the3: The0.fromJson(json["3"]),
        skill: List<String>.from(json["skill"].map((x) => x)),
        education: List<Education>.from(json["education"].map((x) => Education.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "0": the0.toJson(),
        "2": the2.toJson(),
        "3": the3.toJson(),
        "skill": List<dynamic>.from(skill.map((x) => x)),
        "education": List<dynamic>.from(education.map((x) => x.toJson())),
    };
}

class Education {
    String type;
    String grade;
    String school;

    Education({
        required this.type,
        required this.grade,
        required this.school,
    });

    factory Education.fromJson(Map<String, dynamic> json) => Education(
        type: json["type"],
        grade: json["grade"],
        school: json["school"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "grade": grade,
        "school": school,
    };
}

class The0 {
    bool isPrimary;
    String name;
    String phone;

    The0({
        required this.isPrimary,
        required this.name,
        required this.phone,
    });

    factory The0.fromJson(Map<String, dynamic> json) => The0(
        isPrimary: json["is_primary"],
        name: json["name"],
        phone: json["phone"],
    );

    Map<String, dynamic> toJson() => {
        "is_primary": isPrimary,
        "name": name,
        "phone": phone,
    };
}
