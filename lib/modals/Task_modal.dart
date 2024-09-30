import 'package:flutter/material.dart';
import 'package:my_app02/widgets/constant.dart';


class Task {
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  List<Map<String,dynamic>>?desc;
  num? done;
  bool isLast;

  Task(
      {this.icon,
      this.title,
      this.bgcolor,
      this.iconcolor,
      this.btncolor,
      this.left,
      this.desc,
      this.done,
      this.isLast = false});
  static List<Task> generateTasks() {
    return [
      
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        desc:[{
          'time':'9:00AM',
          'title':'Create a video',
          'slot':'9:00 AM - 10:00AM',
          'tlColor': kRedDark,
          'bgcolor':kRedLight,
        },
        {
          'time':'10:00AM',
          'title':'Dance Pratice',
          'slot':'10:00 AM - 11:00AM',
          'tlColor': kBlueDark,
          'bgcolor':kBlueLight,
        },
        {
          'time':'11:00AM',
          'title':'',
          'slot':'',
          'tlColor': kYellowDark,
          'bgcolor':kYellowLight,
        },
        {
          'time':'12:00PM',
          'title':'Movie',
          'slot':'12:00 PM - 1:00PM',
          'tlColor': kRedDark,
          'bgcolor':kRedLight,
        },
        {
          'time':'1:00PM',
          'title':'Create a audio',
          'slot':'1:00 PM - 2:00PM',
          'tlColor': kRedDark,
          'bgcolor':kRedLight,
        }
        ],
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.work,
        title: 'Work',
        bgcolor: kYellowLight,
        iconcolor: kYellowDark,
        btncolor: kYellow,
        left: 1,
        done: 4,
        isLast: false,
      ),
      Task(
        icon: Icons.favorite_rounded,
        title: 'Health',
        bgcolor: kRedLight,
        iconcolor: kRedDark,
        btncolor: kRed,
        left: 2,
        done: 6,
        isLast: false,
      ),
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: true,
      ),
    ];
  }
}