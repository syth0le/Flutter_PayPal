import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paypal/screens/activity/components/activity_item_container.dart';
import 'package:paypal/screens/home/components/appBar.dart';
import 'package:paypal/screens/home/components/horizontal_list.dart';
import 'package:paypal/screens/home/components/user_activity.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Color(0xFF0070BA),
    ));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 3),
        child: CustomAppBar(),
      ),
      body: BodyHome(),
    );
  }
}

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          HorizList(),
          Container(
            // height: double.infinity,
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.height / 10),
            child: Column(
              children: [
                UserActivity(),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
