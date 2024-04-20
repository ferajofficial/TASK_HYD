import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:task_hyd/models/task_model.dart';

Future<List<TaskModel>> techs() async {
  try {
    log('API Hitting...');
    final response = await http.get(
      Uri.parse('https://retoolapi.dev/KmyALy/BAV-TEST-DATA'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );
    log('response : ${response.body}');
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      List<TaskModel> taskList =
          jsonList.map((json) => TaskModel.fromMap(json)).toList();
      return taskList;
    } else {
      throw Exception('Failed to fetch tasks');
    }
  } catch (e) {
    throw Exception('Fetching Failed! Please try again.');
  }
}
