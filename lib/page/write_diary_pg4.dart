// import 'package:mind_care/screen/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:mind_care/page/write_diary_pg1.dart';
// import 'package:mind_care/page/write_diary_pg2.dart';
// import 'package:mind_care/page/write_diary_pg3.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:mind_care/db.dart';
// import 'package:intl/intl.dart';
// import 'package:timer_builder/timer_builder.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// // final titleController = TextEditingController();
// // var now = DateTime.now();
// // final String date = DateFormat('h:mm, MMM d, yyy').format(now);
//
// // Future<void> modifyDiary(BuildContext context) async {
// //   //final int diaryId = ; // 수정할 일기의 ID
// //   final prefs = await SharedPreferences.getInstance();
// //   final userid = prefs.getInt('userid'); // SharedPreferences에서 userid 불러오기
//
// //   if (userid != null) {
// //     // 사용자로부터 수정된 일기 데이터
// //     Map<String, dynamic> updatedDiaryData = {
// //       'User_ID': userid, // SharedPreferences에서 불러온 userid 사용
// //       'Title': titleController.text,
// //       //'Content_1': experienceTextController.text,
// //       //'Content_2': emotionTextController.text,
// //       //'Content_3': reasonTextController.text,
// //       //'Content_4': thinkTextController.text,
// //       'Date': date, // 09:00, Mar 16, 2024
// //       //'Mood_ID': 2, // 수정된 Mood ID
// //     };
// //     // 데이터베이스에서 일기 데이터 업데이트
// //     await DatabaseService.updateDiary(diaryId, updatedDiaryData);
// //     print('Diary with ID: $diaryId has been updated');
// //   } else {
// //     print('User ID not found in SharedPreferences.');
// //   }
// //   Navigator.push(
// //     context,
// //     MaterialPageRoute(
// //         builder: (context) => HomeScreen()),
// //   );
// // }
//
// class Result extends StatefulWidget {
//   const Result({Key? key}) : super(key: key);
//
//   @override
//   State<Result> createState() => _Result();
// }
//
// class _Result extends State<Result> {
//   // Future<void> uploadDiaryToServer() async {
//   //   final String apiUrl = "http://34.64.58.86:3000/Diary";
//
//   //   // 사용자 데이터를 Map 형식으로 정의
//   //   Map<String, dynamic> userData = {
//   //     'Title': titleController.text,
//   //     'Date': date,
//   //   };
//
//   //   // Map을 JSON 문자열로 변환
//   //   String jsonData = jsonEncode(userData);
//
//   //   try {
//   //     // HTTP POST 요청 보내기
//   //     final response = await http.post(
//   //       Uri.parse(apiUrl),
//   //       headers: {'Content-Type': 'application/json'},
//   //       body: jsonData,
//   //     );
//
//   //     if (response.statusCode == 200) {
//   //       print('User created successfully.');
//   //     } else {
//   //       print('Error creating user. Status code: ${response.statusCode}');
//   //       print('Response body: ${response.body}');
//   //     }
//   //   } catch (e) {
//   //     print('Exception: $e');
//   //   }
//   // }
//
//   // void onPressedHandler(){
//   //   uploadDiaryToServer();
//   //   modifyDiary(context);
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(42.0),
//         child: AppBar(
//           title: Text(
//             '작성완료',
//             style: TextStyle(
//               fontSize: 17,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           centerTitle: true,
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//                 child: Column(
//               children: [
//                 LinearProgressIndicator(
//                   value: 1.0,
//                   backgroundColor: Colors.white,
//                   color: Colors.white,
//                   valueColor: AlwaysStoppedAnimation<Color>(
//                       Color.fromRGBO(0, 122, 255, 1.0)),
//                   minHeight: 2.0,
//                   semanticsLabel: 'semanticsLabel',
//                   semanticsValue: 'semanticsValue',
//                 ),
//                 Container(
//                   //decoration: BoxDecoration(
//                   //  borderRadius: BorderRadius.circular(20),
//                   //),
//                   alignment: Alignment.centerLeft,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
//                   child: Text(
//                     '일기가 완성되었어요!\n작성한 일기에 제목을 붙여주세요.',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//
//                 // 감정일기 카드
//                 Column(
//                   // 감정일기 작성완료 요소
//                   children: [
//                     Container(
//                         width: 374,
//                         height: 169,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Color(0xfff0f1f1),
//                         ),
//                         padding: const EdgeInsets.all(20),
//                         child: Column(
//                           //crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                                 // 위
//                                 child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   // 감정일기 제목
//                                   child: TextField(
//                                     controller: titleController,
//                                     decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       labelText: '제목을 입력하세요.',
//                                       floatingLabelBehavior:
//                                           FloatingLabelBehavior.never,
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   // 여백
//                                   height: 14,
//                                 ),
//                                 Container(
//                                     child: Text(
//                                   date,
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Color(0xff86858A),
//                                   ),
//                                 )),
//                                 Container(// 감정 아이콘
//                                     // 감정 수치에 따른 이모티콘
//                                     ),
//                               ],
//                             )),
//                             Container(
//                               // 여백
//                               height: 18,
//                             ),
//                             Container(
//                               // 아래
//                               child: Row(
//                                 children: [
//                                   Container(
//                                       // 키워드
//                                       child: Row(
//                                     children: [
//                                       ListView.builder(
//                                         itemCount: keywords.length,
//                                         itemBuilder: (context, index) {
//                                           return Container(
//                                             // 로컬 keywords 쓰기
//                                             decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(100),
//                                               color: Color.fromRGBO(
//                                                   211, 212, 212, 1.0),
//                                             ),
//                                             child: Text(
//                                               keywords[index],
//                                               style: TextStyle(
//                                                 fontSize: 14,
//                                                 color: Color.fromRGBO(
//                                                     0, 122, 255, 1.0),
//                                               ),
//                                             ),
//                                           );
//                                         },
//                                       ),
//                                     ],
//                                   )),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ))
//                   ],
//                 ),
//
//                 // 일기 내용
//                 Container(
//                     padding: EdgeInsets.all(24),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(18),
//                       color: Color(0xfffbfbfb),
//                     ),
//                     alignment: Alignment.centerLeft,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           '오늘 어떤 일이 있었나요?',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xffABB0BC),
//                           ),
//                         ),
//                         Container(
//                           height: 20,
//                         ),
//                         Text(
//                           experienceTextController.text,
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         Container(
//                           height: 20,
//                         ),
//                         Text(
//                           '그때의 감정을 자세히 들려주세요.',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xffABB0BC),
//                           ),
//                         ),
//                         Container(
//                           height: 20,
//                         ),
//                         Text(
//                           emotionTextController.text,
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         Container(
//                           height: 20,
//                         ),
//                         Text(
//                           '왜 그런 감정이 든 것 같나요?',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xffABB0BC),
//                           ),
//                         ),
//                         Container(
//                           height: 20,
//                         ),
//                         Text(
//                           reasonTextController.text,
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         Container(
//                           height: 20,
//                         ),
//                         Text(
//                           '나에게 해주고 싶은 말을 자유롭게 적어주세요.',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xffABB0BC),
//                           ),
//                         ),
//                         Container(
//                           height: 20,
//                         ),
//                         Text(
//                           thinkTextController.text,
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     )),
//               ],
//             )),
//           ),
//           Align(
//               alignment: Alignment.bottomCenter,
//               child: SizedBox(
//                 width: 358,
//                 height: 57,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color.fromRGBO(0, 122, 255, 1.0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       )),
//                   child: const Text(
//                     '메인 화면으로',
//                     style: TextStyle(
//                       fontSize: 17,
//                       color: Colors.white,
//                     ),
//                   ),
//                   onPressed: () {
//                     onPressedHandler();
//                   }, // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//                 ),
//               )),
//         ],
//       ),
//     );
//   }
// }
