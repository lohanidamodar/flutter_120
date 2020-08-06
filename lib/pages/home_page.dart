import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 1.20'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Slider(
              onChanged: (val) {},
              min: 1,
              max: 10,
              divisions: 5,
              value: 5,
            ),
            RangeSlider(
              onChanged: (val) {},
              values: RangeValues(2, 5),
              divisions: 5,
              min: 1,
              max: 10,
            ),
            RaisedButton(
              onPressed: () async {
                DateTime picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(DateTime.now().year - 5),
                  lastDate: DateTime(DateTime.now().year + 5),
                );
                print(picked);
              },
              child: Text("Date picker"),
            ),
            RaisedButton(
              onPressed: () async {
                TimeOfDay picked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print(picked);
              },
              child: Text("Time Picker"),
            ),
            RaisedButton(
              onPressed: () async {
                showAboutDialog(context: context);
              },
              child: Text("About Dialog"),
            ),
            RaisedButton(
              onPressed: () async {
                DateTimeRange picked = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(DateTime.now().year - 5),
                  lastDate: DateTime(DateTime.now().year + 5),
                  initialDateRange: DateTimeRange(
                    end: DateTime(DateTime.now().year, DateTime.now().month,
                        DateTime.now().day + 5),
                    start: DateTime.now(),
                  ),
                );
                print(picked);
              },
              child: Text("Date Range picker"),
            ),
          ],
        ),
      ),
    );
  }
}
