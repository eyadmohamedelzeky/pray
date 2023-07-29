import 'dart:developer';

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:prayer/models/pray_modal.dart';
import 'package:prayer/services/api.dart';
import 'package:prayer/widgets/custom_row.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  DateTime _selectedValue = DateTime.now();
  PrayerModel? prayerModel;
  String? selectedDate;

  @override
  Widget build(BuildContext context) {
    selectedDate = _selectedValue.day < 10
        ? "0${_selectedValue.day}"
        : _selectedValue.day.toString();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Color(0xffabdbe3),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.black,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) async {
                    // New date selected
                    setState(() {
                      log("Selected Date is $_selectedValue");
                      _selectedValue = date;
                    });
                    await ApiServices()
                        .getPrayerTime(_selectedValue)
                        .then((value) {
                      setState(() {
                        prayerModel = value;
                      });
                      if (prayerModel != null) {
                        log(prayerModel!.data![0].timings.toString());
                      }
                      log(" _selectedValue.day.toString() : ${_selectedValue.day.toString()}");
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              if (prayerModel != null)
                Text(prayerModel!.data!
                    .firstWhere((element) =>
                        (element.date!.gregorian!.day.toString() ==
                            selectedDate))
                    .date!
                    .readable
                    .toString()),
              SizedBox(
                height: 20,
              ),
              if (prayerModel != null)
                Card(
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: drawHijriSection())),
              SizedBox(
                height: 20,
              ),
              if (prayerModel != null)
                Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Column(
                      children: prayerModel!.data!
                          .map(
                            (e) => (e.date!.gregorian!.day == selectedDate)
                                ? Column(
                                    children: [
                                      Custom_Row(
                                          name_of_the_prayer: "Fajr",
                                          Time:
                                              '${e.timings!.fajr!.replaceFirst('(BST)', 'AM')}'),
                                      Divider(
                                        color: Color(0xff2596be),
                                        thickness: 1,
                                      ),
                                      Custom_Row(
                                          name_of_the_prayer: "sunrise",
                                          Time:
                                              '${e.timings!.sunrise!.replaceFirst('(BST)', 'AM')}'),
                                      Divider(
                                        color: Color(0xff2596be),
                                        thickness: 1,
                                      ),
                                      Custom_Row(
                                          name_of_the_prayer: "Dhuhr",
                                          Time:
                                              '${e.timings!.dhuhr!.replaceFirst('(BST)', 'PM')}'),
                                      Divider(
                                        color: Color(0xff2596be),
                                        thickness: 1,
                                      ),
                                      Custom_Row(
                                          name_of_the_prayer: "Asr",
                                          Time:
                                              '${e.timings!.asr!.replaceFirst('(BST)', 'PM')}'),
                                      Divider(
                                        color: Color(0xff2596be),
                                        thickness: 1,
                                      ),
                                      Custom_Row(
                                          name_of_the_prayer: "Maghrib ",
                                          Time:
                                              '${e.timings!.maghrib!.replaceFirst('(BST)', 'PM')}'),
                                      Divider(
                                        color: Color(0xff2596be),
                                        thickness: 1,
                                      ),
                                      Custom_Row(
                                          name_of_the_prayer: "Isha",
                                          Time:
                                              '${e.timings!.isha!.replaceFirst('(BST)', 'PM')}'),
                                      Divider(
                                        color: Color(0xff2596be),
                                        thickness: 1,
                                      ),
                                    ],
                                  )
                                : SizedBox(),
                          )
                          .toList(),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Text drawHijriSection() {
    Hijri hijri = prayerModel!.data!
        .firstWhere((element) =>
            (element.date!.gregorian!.day.toString() == selectedDate))
        .date!
        .hijri!;

    return Text("${hijri.day!} ${hijri.month!.ar} ${hijri.year}");
  }
}
