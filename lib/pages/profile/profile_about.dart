import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            radius: 15.0,
            backgroundImage: AssetImage("assets/images/fiverr_logo.png"),
          ),
          title: Text(
            "bruce",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.star,
                size: 12.0,
                color: Colors.amber,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  "4.9",
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  "(75)",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            "User information",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.location_on),
          title: Text(
            "From",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          subtitle: Text(
            "Sri Lanka (10:21 p.m.)",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          leading: Icon(FontAwesomeIcons.award),
          title: Text(
            "Seller level",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          subtitle: Text(
            "Level 1 seller",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text(
            "Member since",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          subtitle: Text(
            "Jul 2017",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.watch_later),
          title: Text(
            "Avg. response time",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          subtitle: Text(
            "1 hour",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          leading: Icon(FontAwesomeIcons.solidPaperPlane),
          title: Text(
            "Recent delivery",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          subtitle: Text(
            "About 2 days ago",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.remove_red_eye),
          title: Text(
            "Last active",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          subtitle: Text(
            "Online",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15.0),
          child: Text(
            "Languages",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(FontAwesomeIcons.globeAsia),
          title: Text(
            "English",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "Fluent",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          leading: Icon(FontAwesomeIcons.globeAsia),
          title: Text(
            "Sinhala, Sinhalese",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "Native/Bilingual",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            "Description\n",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "Hi. I'm Jay, freelance graphic designer and video editor, web developer "
            "working part time on Fiverr. I have over 6 years of experience in the "
            "fields of computing and graphics. I'm a self learner. I also love "
            "photography. I will guarantee a 100% customer satisfaction. Drop me a "
            "message I'll reply asap!",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            "Skills\n",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: 35.0,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Center(
                        child: Text(
                          "graphic design",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: 35.0,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Center(
                        child: Text(
                          "video editing",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
