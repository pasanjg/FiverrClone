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

  var _messages = [
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "codeman",
      "online": true,
      "receivedOn": "4 days ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": true
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "olivefam",
      "online": true,
      "receivedOn": "4 days ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "mediaguy",
      "online": false,
      "receivedOn": "4 days ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": true
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "upwardsquad",
      "online": false,
      "receivedOn": "1 week ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "jacob",
      "online": true,
      "receivedOn": "3 weeks ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "ninny",
      "online": false,
      "receivedOn": "4 weeks ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": true
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "samnad",
      "online": true,
      "receivedOn": "4 weeks ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "mikestad",
      "online": false,
      "receivedOn": "1 month ago",
      "message": "Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "sasha",
      "online": true,
      "receivedOn": "2 months ago",
      "message":
          "Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "nisha",
      "online": false,
      "receivedOn": "2 months ago",
      "message":
          "Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "belledum",
      "online": false,
      "receivedOn": "2 months ago",
      "message":
          "Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "username": "dumble",
      "online": false,
      "receivedOn": "2 months ago",
      "message":
          "Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum Lorem Ipsum is a lorem ipsum",
      "starred": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inbox"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => MessageFilter(),
                ),
              );
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        color: Colors.black87,
        onRefresh: _refreshMessages,
        child: ListView.builder(
          itemCount: _messages.length,
          itemBuilder: (context, int index) {
            return InkWell(
              onTap: () {},
              child: ListTile(
                leading: InkWell(
                  onTap: () {},
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(_messages[index]['image']),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(_messages[index]['username']),
                    SizedBox(
                      width: 5.0,
                    ),
                    _messages[index]['online']
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
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 15,
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      strutStyle: StrutStyle(fontSize: 12.0),
                      text: TextSpan(
                        text: _messages[index]['message'],
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                trailing: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      _messages[index]['receivedOn'],
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                    InkWell(
                      onTap: () {},
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Container(
                        width: 50.0,
                        height: 40.0,
                        child: _messages[index]['starred']
                            ? Icon(
                                Icons.star,
                                color: Colors.amber,
                              )
                            : Icon(Icons.star_border),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MessageFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select label"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "FILTERS",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "All",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Unread",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Starred",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Archived",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Spam",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Sent",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Custom Offers",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "LABELS",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Follow-up",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Nudge",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
