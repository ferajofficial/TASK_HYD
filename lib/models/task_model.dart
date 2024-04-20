import 'dart:convert';

class TaskModel {
  final int? id;
  final String? column1;

  TaskModel({
    this.id,
    this.column1,
  });

  TaskModel copyWith({
    int? id,
    String? column1,
  }) =>
      TaskModel(
        id: id ?? this.id,
        column1: column1 ?? this.column1,
      );

  factory TaskModel.fromJson(String str) => TaskModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TaskModel.fromMap(Map<String, dynamic> json) => TaskModel(
        id: json["id"],
        column1: json["Column 1"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "Column 1": column1,
      };
}
