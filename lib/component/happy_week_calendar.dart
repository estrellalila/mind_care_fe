import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';
import 'package:intl/intl.dart';

class WeekCalendar extends StatefulWidget{
  const WeekCalendar({Key? key}) : super(key: key);
  @override
  _WeekCalendar createState() => _WeekCalendar();
}

class _WeekCalendar extends State<WeekCalendar>{
  //final OnDaySelected onDaySelected; // 날짜 선택 시 실행할 함수
 // final DateTime selectedDate; // 선택된 날짜
  DateTime _selectedDay = DateTime.now();

  //WeekCalendar({
    //required this.onDaySelected,
   // required this.selectedDate,
  //});

  @override
  Widget build(BuildContext context){
    return  Center(
        child: Expanded(
            child: WeeklyDatePicker(
              selectedDay: _selectedDay,
              changeDay: (value) => setState(() {
                _selectedDay = value;
              }),
              enableWeeknumberText: false,
              weeknumberColor: Colors.black,
              weeknumberTextColor: Colors.black,
              backgroundColor: const Color(0xffEAEAF0),
              weekdayTextColor: Colors.black,
              digitsColor: Colors.black,
              selectedDigitBackgroundColor: Colors.blue,
              weekdays: const ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
              daysInWeek: 7,
            ),
        ),
    );
  }
}
