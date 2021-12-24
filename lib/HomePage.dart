import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({ Key key }) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String filterType = "today";
  CalendarController ctrlr = new CalendarController();
  DateTime today = new DateTime.now();
  var monthNames = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Color(0xfff96060),
                elevation: 0,
                title: Text("Work List", style: TextStyle(
                  fontSize: 30,
                ),),
                actions: [
                  IconButton(
                  icon: Icon(Icons.short_text,
                  color: Colors.white,
                  size: 30,), 
                  onPressed: () {  },)
                ],
              ),
              Container(
            height: 70,
            color: Color(0xfff96060),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {changeFilter("today");},
                      child: Text("Today", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 4,
                      width: 120,
                      color: (filterType== "today")?Colors.white:Colors.transparent,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {changeFilter("monthly");},
                      child: Text("Monthly", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 4,
                      width: 120,
                      color: (filterType== "monthly")?Colors.white:Colors.transparent,
                    )
                  ],
                ),
              ],
            ),
          ),
          (filterType == "monthly")?TableCalendar(
            calendarController: ctrlr,
            startingDayOfWeek: StartingDayOfWeek.monday,
            initialCalendarFormat: CalendarFormat.week,
          ):Container(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Today ${monthNames[today.month-1]}, ${today.day}, ${today.year}", style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),),
                      ],
                    ),
                  ),
                  taskWidget(Color(0xfff96060), "Meeting with Head sir", "9:00 AM"),
                  taskWidget(Colors.blue, "UIU Job Fest", "12:00 PM"),
                  taskWidget(Colors.green, "Hackathon Start", "4:00 PM"),
                ],
              ),
            ),
          )
            ],
          ),
          
        ],
      ),
      
    );
  }
  changeFilter(String filter){
    filterType = filter;
    setState(() {
      
    });
  }
  Slidable taskWidget(Color color, String title, String time){
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.3,
      child: Container(
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.03),
            offset: Offset(0,9),
            blurRadius: 20,
            spreadRadius: 1,
          ),],
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: color,
                  width: 4,
                )
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),)
              ],
            ),
            Expanded( child: Container(),
            ),
            Container(
                width: 4,
                height: 50,
                color: color,
              ),
          ],
        ),
      ),
    );
  }
}