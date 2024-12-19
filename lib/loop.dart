import 'dart:convert';

import 'package:json_usage/models/person.dart';

void main(){

List<Map<String, dynamic>> name = [
    {
        "id": 124578,
        "f_name": "Mohammed",
        "l_name": "Nihal",
        "age": 22,
        "score": 20,
        "isADevoloper": true,
        "phone": {
            "0": {
                "is_primary": true,
                "name": "Nihal's Number",
                "phone": "4578952312"
            },
            "2": {
                "is_primary": true,
                "name": "Nihal's Number",
                "phone": "4578952312"
            },
            "3": {
                "is_primary": true,
                "name": "Nihal's Number",
                "phone": "4578952312"
            },
            "skill": [
                "java",
                "python",
                "flutter",
                "dart"
            ],
            "education": [
                {
                    "type": "school",
                    "grade": "A",
                    "school": "abcd school"
                },
                {
                    "type": "college",
                    "grade": "A",
                    "school": "abcd college"
                }
            ]
        }
    },
    {
        "id": 124578,
        "f_name": "Mohammed",
        "l_name": "Nihal",
        "age": 22,
        "score": 20,
        "isADevoloper": true,
        "phone": {
            "0": {
                "is_primary": true,
                "name": "Nihal's Number",
                "phone": "4578952312"
            },
            "2": {
                "is_primary": true,
                "name": "Nihal's Number",
                "phone": "4578952312"
            },
            "3": {
                "is_primary": true,
                "name": "Nihal's Number",
                "phone": "4578952312"
            },
            "skill": [
                "java",
                "python",
                "flutter",
                "dart"
            ],
            "education": [
                {
                    "type": "school",
                    "grade": "A",
                    "school": "abcd school"
                },
                {
                    "type": "college",
                    "grade": "A",
                    "school": "abcd college"
                }
            ]
        }
    },
    {
        "id": 124578,
        "f_name": "Mohammed",
        "l_name": "Nihal",
        "age": 22,
        "score": 20,
        "isADevoloper": true,
        "phone": {
            "0": {
                "is_primary": true,
                "name": "Nihal's Number",
                "phone": "4578952312"
            },
            "2": {
                "is_primary": true,
                "name": "Nihal's Number",
                "phone": "4578952312"
            },
            "3": {
                "is_primary": true,
                "name": "Nihal's Number",
                "phone": "4578952312"
            },
            "skill": [
                "java",
                "python",
                "flutter",
                "dart"
            ],
            "education": [
                {
                    "type": "school",
                    "grade": "A",
                    "school": "abcd school"
                },
                {
                    "type": "college",
                    "grade": "A",
                    "school": "abcd college"
                }
            ]
        }
    }
];

String stringedJson = jsonEncode(name);


List<dynamic> list = jsonDecode(stringedJson);

List<PersonModel> personModel = list.map((v) => PersonModel.fromJson(v)).toList();
print(personModel[0].lName);
}