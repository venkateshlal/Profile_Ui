import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_chromicle/listc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Icon(Icons.arrow_back), Icon(Icons.menu)],
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    radius: 80,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://www.pngkey.com/png/full/2-27646_twitter-logo-png-transparent-background-logo-twitter-png.png'),
                              radius: 25,
                        ),
                        CircleAvatar(backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/124/124010.png'),
                               radius: 25,
                        ),
                        CircleAvatar(backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://1000logos.net/wp-content/uploads/2016/11/google-plus-logo.jpg'),
                               radius: 25,
                        ),
                        CircleAvatar(backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LinkedIn_icon_circle.svg/2048px-LinkedIn_icon_circle.svg.png'),
                               radius: 25,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Chromicle",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "@amFOSS",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Mobile App Developer and Open",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "source enthusiastic",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                ListC(
                    icon1: Icons.privacy_tip,
                    icon2: Icons.arrow_forward_ios,
                    texts: "Privacy"),
                ListC(
                    icon1: Icons.history,
                    icon2:Icons.arrow_forward_ios,
                    texts: "Purchase History"),
                ListC(
                    icon1: Icons.help,
                    icon2:Icons.arrow_forward_ios,
                    texts: "Help & Support"),
                ListC(
                    icon1: Icons.settings,
                    icon2:Icons.arrow_forward_ios,
                    texts: "Settings"),
                ListC(
                    icon1: Icons.person_add,
                    icon2:Icons.arrow_forward_ios,
                    texts: "invite a Friend"),
                ListC(
                    icon1: Icons.logout_outlined,
                    icon2: Icons.arrow_forward_ios,
                    texts: "Logout")
              ],
            ))
          ],
        ),
      ),
    );
  }
}
