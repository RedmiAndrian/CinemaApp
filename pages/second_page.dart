import 'package:cinema/services.dart/dbhelper.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  const SecondPage({Key key}) : super(key: key);
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

   var myitems = List();
  List<Widget> children = new List<Widget>();
  final dbhelper = Databasehelper.instance;

  Future<bool> query() async {
    myitems = [];
    children = [];
    var allrows = await dbhelper.queryall();
    allrows.forEach((row) { 
      myitems.add(row.toString());
      children.add(Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text(
          row['name'],
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onTap: () {
          showDialog(context: context,
          builder: (context){
            return AlertDialog(
              title: Text(row['name'], style: TextStyle(fontSize: 20),),
              content: Text(
                'Do you want to cancel your booking now?',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      }, 
                      child: Text(
                        'NO'
                      ),
                      ),
                      SizedBox(width: 5),
                      RaisedButton(
                        color: Colors.red,
                        child: Text(
                          'CANCEL BOOK'
                        ),
                        onPressed: () {
                           dbhelper.deletedata(row['id']);
                            setState(() {

                            });
                            Navigator.pop(context);
                        },
                        )
                  ],
                )
              ],
            );
          },
          );
        },
      ),
      ),
    ));
    });
    return Future.value(true);
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snap) {
        if(snap.hasData == null){
          return Center(
            child: Text(
              'No Data'
            ),
          );
        }else{
          if(myitems.length == 0){
        return  Scaffold(
      appBar: AppBar(
        title: Text(
          'Booked Movies',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
        body: Center(
          child: Text(
            'No Booked Movies Yet',
            style: TextStyle(
              fontSize: 15,
            ),
          )
        )
    );
          }else{
          return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booked Movies',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
        body: SingleChildScrollView(
          child: Column(
            children: children,
          )
        ),
    );
          }
        }
      },
      future: query(),
      );
  }
}