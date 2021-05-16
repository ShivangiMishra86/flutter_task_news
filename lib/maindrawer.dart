import 'package:flutter/material.dart';
import 'package:flutter_task/profileScreen.dart';
import 'package:flutter_task/videoScreen.dart';
import 'homeScreen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Lee Wang",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Software Engenieer",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      //Now let's Add the button for the Menu
      //and let's copy that and modify it
      ListTile(
        onTap: () => {
          Navigator.of(context).pop(),
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => HomePage()))
        },
        leading: Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: Text("Home"),
      ),

      ListTile(
        onTap: () => {
          Navigator.of(context).pop(),
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => profilePage()))
        },
        leading: Icon(
          Icons.person,
          color: Colors.black,
        ),
        title: Text("Profile"),
      ),

      ListTile(
    onTap: () => {
    Navigator.of(context).pop(),
    Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => VideoDemo()))
    },
        leading: Icon(
          Icons.video_collection_rounded,
          color: Colors.black,
        ),
        title: Text("Video"),
      )


    ]);}
}





