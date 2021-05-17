import 'package:flutter/material.dart';
import '../widgets/show_time.dart';
import '../widgets/show_date.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  String date = '';
  String time = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('CL', style: TextStyle(letterSpacing: 5.5)),
            Icon(Icons.access_time_sharp, color: Colors.blue),
            Text('CK', style: TextStyle(letterSpacing: 5.5)),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          date.isEmpty || time.isEmpty ? Container() : showTimeDate(),
          SizedBox(height: 30),
          inkWellButton(),
        ],
      ),
    );
  }

  Widget showTimeDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Date  =>  $date'),
        SizedBox(height: 15),
        Text('Time  =>  $time'),
      ],
    );
  }

  Widget inkWellButton() {
    return InkWell(
      onTap: showDateThenTimeThenSnack,
      child: Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(.1),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text('Choose the date and time',
                  style: TextStyle(fontSize: 18)))),
    );
  }

  buildSnakBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Row(
      children: [
        Icon(Icons.date_range, color: Colors.blue),
        Text(date),
        SizedBox(width: 10),
        Icon(Icons.watch_later_rounded, color: Colors.blue),
        Text(time),
      ],
    )));
  }

  Future showDateThenTimeThenSnack() async {
    await showDate(context).then((value) {
      setState(() {
        date = value;
      });
      showTime(context).then((value) {
        setState(() {
          time = value;
        });
        buildSnakBar();
      });
    });
  }
}
