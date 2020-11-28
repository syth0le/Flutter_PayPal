import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';

import 'activity_item_container.dart';
import 'date_activity_item.dart';

class ActivityListAll extends StatelessWidget {
  const ActivityListAll({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 1000),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          DateActivity("Today"),
          ContactContainer(
            activityContainerText: "Mike Rine",
            icon: "M",
            timer: "1 minute ago",
            activityType: "people",
            sumOfActivity: "+,250",
          ),
          ContactContainer(
            activityContainerText: "Google Drive",
            icon: "Google",
            timer: "2 hours ago",
            activityType: "shop",
            sumOfActivity: "-,138.5",
          ),
          ContactContainer(
            activityContainerText: "Casey Smith",
            icon: "C",
            timer: "9 hours ago",
            activityType: "people",
            sumOfActivity: "+,531",
          ),
          DateActivity("Yesterday"),
          ContactContainer(
            activityContainerText: "Apple Store",
            icon: "Apple",
            timer: "Yesterday at 11:45 AM",
            activityType: "shop",
            sumOfActivity: "-,250",
          ),
          ContactContainer(
            activityContainerText: "Pizza Delivery",
            icon: "pizza",
            timer: "Yesterday at 2:30 PM",
            activityType: "shop",
            sumOfActivity: "-,58.9",
          ),
          ContactContainer(
            activityContainerText: "Amazon.com",
            icon: "Amazon",
            timer: "Yesterday at 6:28 PM",
            activityType: "shop",
            sumOfActivity: "-,300",
          ),
          ContactContainer(
            activityContainerText: "Viktor Dima",
            icon: "V",
            timer: "Yesterday at 6:59 PM",
            activityType: "people",
            sumOfActivity: "+,550",
          ),
        ],
      ),
    );
  }
}

class ActivityListIncome extends StatelessWidget {
  const ActivityListIncome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 1000),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          DateActivity("Today"),
          ContactContainer(
            activityContainerText: "Mike Rine",
            icon: "M",
            timer: "1 minute ago",
            activityType: "people",
            sumOfActivity: "+,250",
          ),
          ContactContainer(
            activityContainerText: "Casey Smith",
            icon: "C",
            timer: "9 hours ago",
            activityType: "people",
            sumOfActivity: "+,531",
          ),
          DateActivity("Yesterday"),
          ContactContainer(
            activityContainerText: "Viktor Dima",
            icon: "V",
            timer: "Yesterday at 6:59 PM",
            activityType: "people",
            sumOfActivity: "+,550",
          ),
        ],
      ),
    );
  }
}

class ActivityListOutcome extends StatelessWidget {
  const ActivityListOutcome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 1000),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          DateActivity("Today"),
          ContactContainer(
            activityContainerText: "Google Drive",
            icon: "Google",
            timer: "2 hours ago",
            activityType: "shop",
            sumOfActivity: "-,138.5",
          ),
          DateActivity("Yesterday"),
          ContactContainer(
            activityContainerText: "Apple Store",
            icon: "Apple",
            timer: "Yesterday at 11:45 AM",
            activityType: "shop",
            sumOfActivity: "-,250",
          ),
          ContactContainer(
            activityContainerText: "Pizza Delivery",
            icon: "pizza",
            timer: "Yesterday at 2:30 PM",
            activityType: "shop",
            sumOfActivity: "-,58.9",
          ),
          ContactContainer(
            activityContainerText: "Amazon.com",
            icon: "Amazon",
            timer: "Yesterday at 6:28 PM",
            activityType: "shop",
            sumOfActivity: "-,300",
          ),
        ],
      ),
    );
  }
}

class ActivityList extends StatefulWidget {
  @override
  _ActivityListState createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  // ignore: non_constant_identifier_names

  List<String> _user_activity = [
    "Mike Rine/M/1 minute ago/people/+,250",
    "Google Drive/Google/2 hours ago/shop/-,138.5",
    "Casey Smith/C/9 hours ago/people/+,531",
    "Apple Store/Apple/Yesterday at 11:45 AM/shop/-,250",
    "Pizza Delivery/pizza/Yesterday at 2:30 PM/shop/-,58.9",
    "Amazon.com/Amazon/Yesterday at 6:28 PM/shop/-,300",
    "Viktor Dima/V/Yesterday at 6:59 PM/people/+,550",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _user_activity.length,
      itemBuilder: (context, index) {
        var temp = _user_activity[index].split('/');
        var tempDate = temp[2].split(' ');
        var temporary = "";
        var today = 0;
        var yesterday = 0;
        if (tempDate[0] != "Yesterday") {
          tempDate[0] = "Today";
          today += 1;
        } else {
          yesterday += 1;
        }
        return Column(
          children: [
            today == 4
                ? DateActivity("${tempDate[0]}")
                : DateActivity("${tempDate[0]}"),
            ContactContainer(
              activityContainerText: temp[0].toString(),
              icon: temp[1].toString(),
              timer: temp[2].toString(),
              activityType: temp[3].toString(),
              sumOfActivity: temp[4].toString(),
            ),
          ],
        );
      },
    );
  }
}
