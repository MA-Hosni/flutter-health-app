import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/upcoming_schedule.dart';


class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;

  final _scheduleWidgets = [
    //upcoming widget
    UpcomingSchedule(),
    //completed widget
    Container(),
    //canceled widget
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 15,left: 15,right: 15),
            child: Text(
              "Schedule",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF4F6FA),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0 ? Color(0xFF7165D6) : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Upcoming",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex == 0 ? Colors.white : Colors.black38,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1 ? Color(0xFF7165D6) : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Completed",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex == 1 ? Colors.white : Colors.black38,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2 ? Color(0xFF7165D6) : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Canceled",
                        style: TextStyle(
                          color: _buttonIndex == 2 ? Colors.white : Colors.black38,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            _scheduleWidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }
}