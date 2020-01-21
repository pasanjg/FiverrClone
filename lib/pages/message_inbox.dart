import 'package:flutter/material.dart';

class MessageInboxPage extends StatefulWidget {
  @override
  _MessageInboxPageState createState() => _MessageInboxPageState();
}

class _MessageInboxPageState extends State<MessageInboxPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> _refreshMessages() async {}

  var messages = [
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREJzkKuEBSObp1BNlRAhhmyvR8r_O2qMCcUaaFZAplHVKqct7G&s",
      "username": "codeman",
      "online": true,
      "receivedOn": "4 days ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": true
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREJzkKuEBSObp1BNlRAhhmyvR8r_O2qMCcUaaFZAplHVKqct7G&s",
      "username": "olivefam",
      "online": true,
      "receivedOn": "4 days ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREJzkKuEBSObp1BNlRAhhmyvR8r_O2qMCcUaaFZAplHVKqct7G&s",
      "username": "mediaguy",
      "online": false,
      "receivedOn": "4 days ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": true
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREJzkKuEBSObp1BNlRAhhmyvR8r_O2qMCcUaaFZAplHVKqct7G&s",
      "username": "upwardsquad",
      "online": false,
      "receivedOn": "1 week ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREJzkKuEBSObp1BNlRAhhmyvR8r_O2qMCcUaaFZAplHVKqct7G&s",
      "username": "jacob",
      "online": true,
      "receivedOn": "3 weeks ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREJzkKuEBSObp1BNlRAhhmyvR8r_O2qMCcUaaFZAplHVKqct7G&s",
      "username": "ninny",
      "online": false,
      "receivedOn": "4 weeks ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": true
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREJzkKuEBSObp1BNlRAhhmyvR8r_O2qMCcUaaFZAplHVKqct7G&s",
      "username": "samnad",
      "online": true,
      "receivedOn": "4 weeks ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREJzkKuEBSObp1BNlRAhhmyvR8r_O2qMCcUaaFZAplHVKqct7G&s",
      "username": "mikestad",
      "online": false,
      "receivedOn": "1 month ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREJzkKuEBSObp1BNlRAhhmyvR8r_O2qMCcUaaFZAplHVKqct7G&s",
      "username": "sasha",
      "online": true,
      "receivedOn": "2 months ago",
      "message":
          "Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Colors.black87,
      onRefresh: _refreshMessages,
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, int index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 32.0,
              backgroundImage: NetworkImage(messages[index]['image']),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(messages[index]['username']),
                SizedBox(
                  width: 5.0,
                ),
                messages[index]['online']
                    ? Text(
                        "online",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 14.0,
                        ),
                      )
                    : Text(""),
              ],
            ),
            subtitle: Wrap(
              children: <Widget>[
                Container(
                  height: 15,
                  child: Text(
                    messages[index]['message'],
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            trailing: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  messages[index]['receivedOn'],
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: InkWell(
                    onTap: () {},
                    child: messages[index]['starred']
                        ? Icon(
                            Icons.star,
                            color: Colors.amber,
                          )
                        : Icon(Icons.star_border),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
