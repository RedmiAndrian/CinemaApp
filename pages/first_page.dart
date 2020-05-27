import 'package:cinema/services.dart/dbhelper.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class FirstPage extends StatefulWidget {

  const FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  final dbhelper = Databasehelper.instance;
  void  insertdata(name) async {
	  Map<String, dynamic> row = {
		Databasehelper.columnName:  name,
	  };
	  final id =  await dbhelper.insert(row);
	  print(id);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget> [
                  GestureDetector(
                    onTap: () {
                      showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text(
                            'Avengers: Endgame',
                            style: TextStyle(
                              fontSize: 20,
                            )
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.stretch,
                              children:<Widget> [
                                Image.asset('assets/endgame.jpg'),
                                SizedBox(height: 5),
                                Container(
                                  child: SingleChildScrollView(
                                    child: Text(
                                      'The grave course of events set in motion by Thanos, that wiped out half the universe and fractured the Avengers ranks, compels the remaining Avengers to take one final stand in Marvel Studios\' grand conclusion to twenty-two films.'
                                    ),
                                  ),
                                )
                              ],
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
                                    'CANCEL',
                                  ),
                                  ),
                                  SizedBox(width: 5,),
                                  RaisedButton(
                                    color: Colors.red,
                                    onPressed: () {
                                      insertdata('Avengers: Endgame');
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'BOOK NOW!'
                                    ),
                                    ),
                              ],
                            )
                          ],
                        );
                      },
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 255,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/endgame.jpg'),
                          fit: BoxFit.fill
                          ) 
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 190),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Avenger: Endgame',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white
                                  ),
                                  ),
                              ),
                                SizedBox(height: 7),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Action, Sci-fi',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70                          
                                  ), 
                                ),
                              )
                            ],
                          )
                          ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap:() {
                      showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text(
                            'Bad Boys for Life',
                            style: TextStyle(
                              fontSize: 20,
                            )
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.stretch,
                              children:<Widget> [
                                Image.asset('assets/badboys.jpg'),
                                SizedBox(height: 5),
                                Container(
                                  child: SingleChildScrollView(
                                    child: Text(
                                      'Miami detectives Mike Lowrey and Marcus Burnett investigate a string of murders tied to Lowrey\'s troubled past.'
                                    ),
                                  ),
                                )
                              ],
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
                                    'CANCEL',
                                  ),
                                  ),
                                  SizedBox(width: 5,),
                                  RaisedButton(
                                    color: Colors.red,
                                    onPressed: () {
                                      insertdata("Bad Boys For Life");
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'BOOK NOW!'
                                    ),
                                    ),
                              ],
                            )
                          ],
                        );
                      },
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 255,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/badboys.jpg'),
                          fit: BoxFit.fill
                          ) 
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 190),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Bad Boys for Life',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                  ),
                                  ),
                              ),
                                SizedBox(height: 7),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Action, Comedy',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white70                          
                                  ), 
                                ),
                              )
                            ],
                          )
                          ),
                      ),
                    ),
                
                    )
                    ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget> [
                  GestureDetector(
                    onTap: () {
                      showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text(
                            'Enter the Fat Dragon',
                            style: TextStyle(
                              fontSize: 20,
                            )
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.stretch,
                              children:<Widget> [
                                Image.asset('assets/fat.jpg'),
                                SizedBox(height: 5),
                                Container(
                                  child: SingleChildScrollView(
                                    child: Text(
                                      'When a chance to save his career comes up, Zhu jumps at the opportunity and is sent to Japan to help extradite a fugitive. The plan, of course, goes awry, and Zhu is forced to team up with an ex-Hong Kong cop Thor (also fat; played by Wong Jing), whom he soon learns is going through relationship problems of his own.'
                                    ),
                                  ),
                                )
                              ],
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
                                    'CANCEL',
                                  ),
                                  ),
                                  SizedBox(width: 5,),
                                  RaisedButton(
                                    color: Colors.red,
                                    onPressed: () {
                                      insertdata('Enter the Fat Dragon');
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'BOOK NOW!'
                                    ),
                                    ),
                              ],
                            )
                          ],
                        );
                      },
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 255,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/fat.jpg'),
                          fit: BoxFit.fill
                          ) 
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 190),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Enter the Fat Dragon',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white
                                  ),
                                  ),
                              ),
                                SizedBox(height: 7),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Action, Comedy',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70                          
                                  ), 
                                ),
                              )
                            ],
                          )
                          ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap:() {
                      showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text(
                            'Ip Man 4: The Finale',
                            style: TextStyle(
                              fontSize: 20,
                            )
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.stretch,
                              children:<Widget> [
                                Image.asset('assets/ipman.png'),
                                SizedBox(height: 5),
                                Container(
                                  child: SingleChildScrollView(
                                    child: Text(
                                      'Ip Man and his son encounter racial discrimination after traveling to the United States to seek a better life.'
                                    ),
                                  ),
                                )
                              ],
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
                                    'CANCEL',
                                  ),
                                  ),
                                  SizedBox(width: 5,),
                                  RaisedButton(
                                    color: Colors.red,
                                    onPressed: () {
                                      insertdata("Ip Man 4: The Finale");
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'BOOK NOW!'
                                    ),
                                    ),
                              ],
                            )
                          ],
                        );
                      },
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 255,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/ipman.png'),
                          fit: BoxFit.fill
                          ) 
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 190),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Ip Man 4: The Finale',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white
                                  ),
                                  ),
                              ),
                                SizedBox(height: 7),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Action, Martial Arts',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white70                          
                                  ), 
                                ),
                              )
                            ],
                          )
                          ),
                      ),
                    ),
              ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget> [
                  GestureDetector(
                    onTap: () {
                      showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text(
                            'Frozen II',
                            style: TextStyle(
                              fontSize: 20,
                            )
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.stretch,
                              children:<Widget> [
                                Image.asset('assets/frozen.jpg'),
                                SizedBox(height: 5),
                                Container(
                                  child: SingleChildScrollView(
                                    child: Text(
                                      'Elsa the Snow Queen has an extraordinary gift -- the power to create ice and snow. But no matter how happy she is to be surrounded by the people of Arendelle, Elsa finds herself strangely unsettled. After hearing a mysterious voice call out to her, Elsa travels to the enchanted forests and dark seas beyond her kingdom -- an adventure that soon turns into a journey of self-discovery.'
                                    ),
                                  ),
                                )
                              ],
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
                                    'CANCEL',
                                  ),
                                  ),
                                  SizedBox(width: 5,),
                                  RaisedButton(
                                    color: Colors.red,
                                    onPressed: () {
                                      Navigator.pop(context);
                                      insertdata("Frozen II");
                                    },
                                    child: Text(
                                      'BOOK NOW!'
                                    ),
                                    ),
                              ],
                            )
                          ],
                        );
                      },
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 255,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/frozen.jpg'),
                          fit: BoxFit.fill
                          ) 
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 190),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Frozen II',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                  ),
                                  ),
                              ),
                                SizedBox(height: 7),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Animation, Family',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white70                          
                                  ), 
                                ),
                              )
                            ],
                          )
                          ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {
                      showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text(
                            'The Lion King',
                            style: TextStyle(
                              fontSize: 20,
                            )
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.stretch,
                              children:<Widget> [
                                Image.asset('assets/lion.jpg'),
                                SizedBox(height: 5),
                                Container(
                                  child: SingleChildScrollView(
                                    child: Text(
                                      'Simba, a young lion prince, flees his kingdom after the murder of his father, Mufasa. Years later, a chance encounter with Nala, a lioness, causes him to return and take back what is rightfully his.'
                                    ),
                                  ),
                                )
                              ],
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
                                    'CANCEL',
                                  ),
                                  ),
                                  SizedBox(width: 5,),
                                  RaisedButton(
                                    color: Colors.red,
                                    onPressed: () {
                                      Navigator.pop(context);
                                      insertdata("The Lion King");
                                    },
                                    child: Text(
                                      'BOOK NOW!'
                                    ),
                                    ),
                              ],
                            )
                          ],
                        );
                      },
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 255,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/lion.jpg'),
                          fit: BoxFit.fill
                          ) 
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 190),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'The Lion King',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                  ),
                                  ),
                              ),
                                SizedBox(height: 7),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Animation, Family',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white70                          
                                  ), 
                                ),
                              )
                            ],
                          )
                          ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget> [
                  GestureDetector(
                    onTap:() {
                      showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text(
                            'Detective Pikachu',
                            style: TextStyle(
                              fontSize: 20,
                            )
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.stretch,
                              children:<Widget> [
                                Image.asset('assets/pikachu.jpeg'),
                                SizedBox(height: 5),
                                Container(
                                  child: SingleChildScrollView(
                                    child: Text(
                                      'After the demise of his father, Tim travels to Ryme city where he runs into his father\'s Pokemon partner, Pikachu. They team up and try to work on the case left unfinished by Tim\'s father.'
                                    ),
                                  ),
                                )
                              ],
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
                                    'CANCEL',
                                  ),
                                  ),
                                  SizedBox(width: 5,),
                                  RaisedButton(
                                    color: Colors.red,
                                    onPressed: () {
                                      insertdata("Detective Pikachu");
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'BOOK NOW!'
                                    ),
                                    ),
                              ],
                            )
                          ],
                        );
                      },
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 255,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/pikachu.jpeg'),
                          fit: BoxFit.fill
                          ) 
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 190),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Detective Pikachu',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white
                                  ),
                                  ),
                              ),
                                SizedBox(height: 7),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Family, Mystery',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70                          
                                  ), 
                                ),
                              )
                            ],
                          )
                          ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap:() {
                       showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text(
                            'Unstoppable',
                            style: TextStyle(
                              fontSize: 20,
                            )
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.stretch,
                              children:<Widget> [
                                Image.asset('assets/unstoppable.jpeg'),
                                SizedBox(height: 5),
                                Container(
                                  child: SingleChildScrollView(
                                    child: Text(
                                      'A legendary, hard-hitting gangster comes out of retirement to save his kidnapped wife.'
                                    ),
                                  ),
                                )
                              ],
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
                                    'CANCEL',
                                  ),
                                  ),
                                  SizedBox(width: 5,),
                                  RaisedButton(
                                    color: Colors.red,
                                    onPressed: () {
                                      insertdata("Unstoppable");
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'BOOK NOW!'
                                    ),
                                    ),
                              ],
                            )
                          ],
                        );
                      },
                       );
                    },
                    child: Container(
                      width: 154,
                      height: 255,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/unstoppable.jpeg'),
                          fit: BoxFit.fill
                          ) 
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 190),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Unstoppable',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                  ),
                                  ),
                              ),
                                SizedBox(height: 7),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Action, Crime',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white70                          
                                  ), 
                                ),
                              )
                            ],
                          )
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}