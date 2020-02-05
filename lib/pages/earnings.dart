import 'package:flutter/material.dart';

import 'package:bezier_chart/bezier_chart.dart';

class EarningsPage extends StatefulWidget {
  @override
  _EarningsPageState createState() => _EarningsPageState();
}

class _EarningsPageState extends State<EarningsPage>
    with TickerProviderStateMixin {
  String currencyDropdownValue = "Last 7 Days";
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Earnings"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "WITHDRAW",
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            )),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 140.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "US\$69.60",
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          "Personal balance",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Overview"),
                      DropdownButton<String>(
                        value: currencyDropdownValue,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 15,
                        elevation: 16,
                        underline: Container(
                          height: 0.0,
                          color: Colors.grey,
                        ),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            currencyDropdownValue = newValue;
                          });
                        },
                        items: <String>[
                          "Last 7 Days",
                          "Last 30 Days",
                          "Last 3 Months",
                          "This year"
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(),
          TabBar(
              controller: _tabController,
              labelColor: Theme.of(context).accentColor,
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(text: "EARNINGS"),
                Tab(text: "COMPLETED ORDERS"),
              ]),
          TabBarView(
            controller: _tabController,
            children: <Widget>[
              // ====== EARNINGS ==========
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width * 0.9,
                child: BezierChart(
                  bezierChartScale: BezierChartScale.CUSTOM,
                  xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
                  series: const [
                    BezierLine(
                      data: const [
                        DataPoint<double>(value: 10, xAxis: 0),
                        DataPoint<double>(value: 130, xAxis: 5),
                        DataPoint<double>(value: 50, xAxis: 10),
                        DataPoint<double>(value: 150, xAxis: 15),
                        DataPoint<double>(value: 75, xAxis: 20),
                        DataPoint<double>(value: 0, xAxis: 25),
                        DataPoint<double>(value: 5, xAxis: 30),
                        DataPoint<double>(value: 45, xAxis: 35),
                      ],
                    ),
                  ],
                  config: BezierChartConfig(
                    displayYAxis: true,
                    xLinesColor: Colors.orange,
                    verticalIndicatorStrokeWidth: 3.0,
                    verticalIndicatorColor: Colors.red,
                    showVerticalIndicator: true,
                    backgroundColor: Colors.green,
                    snap: false,
                  ),
                ),
              ),
              // ======== COMPLETED ORDERS =========
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width * 0.9,
                child: BezierChart(
                  bezierChartScale: BezierChartScale.CUSTOM,
                  xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
                  series: const [
                    BezierLine(
                      data: const [
                        DataPoint<double>(value: 10, xAxis: 0),
                        DataPoint<double>(value: 130, xAxis: 5),
                        DataPoint<double>(value: 50, xAxis: 10),
                        DataPoint<double>(value: 150, xAxis: 15),
                        DataPoint<double>(value: 75, xAxis: 20),
                        DataPoint<double>(value: 0, xAxis: 25),
                        DataPoint<double>(value: 5, xAxis: 30),
                        DataPoint<double>(value: 45, xAxis: 35),
                      ],
                    ),
                  ],
                  config: BezierChartConfig(
                    displayYAxis: true,
                    xLinesColor: Colors.orange,
                    verticalIndicatorStrokeWidth: 3.0,
                    verticalIndicatorColor: Colors.red,
                    showVerticalIndicator: true,
                    backgroundColor: Colors.green,
                    snap: false,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
