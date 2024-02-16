import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'db.dart';

Future<void> saveUser() async {
  final url = Uri.parse('http://34.64.250.30:3000/User');
  final headers = {'Content-Type': 'application/json'};
  final body = json.encode({
    "Name": "Testname",
    "email": "adjlsakj-testd212@example.testtest.com",
    "Signup_date": "2024-02-13 12:00:00",
    "is_Google": true,
    "is_Apple": false,
    "Provider_ID": "test_provider_id",
    "Access_Token": "test_access_token",
    "Refresh_Token": "test_refresh_token",
    "Token_Expiry_Date": "2024-02-13 12:00:00",
    "Profile_Picture_URL": "test_profile_picture_url"
  });

  try {
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 201) {
      final responseData = json.decode(response.body);
      if (responseData['success']) {
        final userid = responseData['userid'];
        final prefs =
            await SharedPreferences.getInstance(); // 이 부분(await)때문에 유저가 기다려야함.
        await prefs.setInt('userid', userid);
        print('User saved with ID: $userid');
        // SQLite 데이터베이스에 유저 데이터 저장
        await DatabaseService.insertUser({
          "User_ID": userid,
          "Name": "Testname",
          "email": "adjlsakj-testd212@example.testtest.com",
          "Signup_date": "2024-02-13 12:00:00",
          "is_Google": true,
          "is_Apple": false,
          "Provider_ID": "test_provider_id",
          "Access_Token": "test_access_token",
          "Refresh_Token": "test_refresh_token",
          "Token_Expiry_Date": "2024-02-13 12:00:00",
          "Profile_Picture_URL": "test_profile_picture_url"
        });
        print('Local DB fetched');
      }
    } else {
      print('Failed to save user.');
    }
  } catch (e) {
    print('Error saving user: $e');
  }
}

void main() {
  saveUser();
  runApp(LaunchScreen());
  // SplashScreen 위젯을 첫 화면으로 지정
}

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 위젯의 UI 구현
    return MaterialApp(
      // 항상 최상단에 입력되는 위젯
      home: Scaffold(
        // 항상 두 번째로 입력되는 위젯
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'asset/img/logo.png',
                    width: 86,
                  ),
                  //CircularProgressIndicator(
                  // valueColor: AlwaysStoppedAnimation(
                  //     Colors.white,
                  //   ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
