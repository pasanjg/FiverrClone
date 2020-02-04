import 'package:flutter/material.dart';

class GigsPage extends StatefulWidget {
  @override
  _GigsPageState createState() => _GigsPageState();
}

class _GigsPageState extends State<GigsPage> {
  @override
  void initState() {
    super.initState();
  }

  var gigs = [
    {
      "image": "https://semantic-ui.com/images/wireframe/image.png",
      "title": "Create an amazing flutter app",
      "ratings": 5.0,
      "reviewCount": 15,
      "price": "\$30",
      "isFavourite": true
    },
    {
      "image": "https://semantic-ui.com/images/wireframe/image.png",
      "title": "Create a simple logo animation in 24 hours",
      "ratings": 5.0,
      "reviewCount": 11,
      "price": "\$5",
      "isFavourite": false
    },
    {
      "image": "https://semantic-ui.com/images/wireframe/image.png",
      "title": "Create an amazing glitch promo video",
      "ratings": 5.0,
      "reviewCount": 10,
      "price": "\$15",
      "isFavourite": true
    },
    {
      "image": "https://semantic-ui.com/images/wireframe/image.png",
      "title": "Create an amazing mobile app promotion video",
      "ratings": 5.0,
      "reviewCount": 20,
      "price": "\$20",
      "isFavourite": false
    },
    {
      "image": "https://semantic-ui.com/images/wireframe/image.png",
      "title": "Create a simple logo animation in 24 hours",
      "ratings": 5.0,
      "reviewCount": 15,
      "price": "\$5",
      "isFavourite": false
    },
    {
      "image": "https://semantic-ui.com/images/wireframe/image.png",
      "title": "Create a glitch logo opener",
      "ratings": 5.0,
      "reviewCount": 15,
      "price": "\$5",
      "isFavourite": true
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: gigs.length,
      itemBuilder: (context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0),
          child: Card(
            child: Container(
              height: 120,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(
                            gigs[index]['image'],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 120.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 10.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 12.0,
                                          color: Colors.amber,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4.0),
                                          child: Text(
                                            gigs[index]['ratings'].toString(),
                                            style: TextStyle(
                                              color: Colors.amber,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4.0),
                                          child: Text(
                                            "(${gigs[index]['reviewCount']})",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                      child: Text(
                                        gigs[index]['title'],
                                      ),
                                    ),
                                  ],
                                ),
                                gigs[index]['isFavourite']
                                    ? Icon(Icons.favorite, color: Colors.red)
                                    : Icon(Icons.favorite_border)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "From ",
                                  style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                  ),
                                ),
                                Text(
                                  gigs[index]['price'],
                                  style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
