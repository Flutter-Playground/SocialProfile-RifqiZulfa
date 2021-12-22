import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Social UI',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _profilePic(){
    return Container(
           padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Align(
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.arrow_back,
              size: 35,
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/pp.jpg'),
                fit: BoxFit.fill
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _Profile(){
    return Container(
      child: Column(
        children: <Widget>[
          Text('Kevin McCalister',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('UI/UX Designer | Daily',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 19,
            color: Colors.grey,
            ),
          ),
          Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: Colors.blue[800],
              shape: BoxShape.circle,
            ),
            child: const Text(
              'UI',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
            ],
          ),
          SizedBox(
            height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                InkWell(
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Center(
                      child: Image.asset(
                        'images/dribbble.png',
                        height: 40,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(20),
                      ),
                  ),
                  onTap: () {
                    setState(() {});
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Center(
                      child: Image.asset(
                        'images/behance.png',
                        height: 40,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(20),
                      ),
                  ),
                  onTap: () {
                    setState(() {});
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Center(
                      child: Image.asset(
                        'images/instagram.png',
                        height: 40,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(20),
                      ),
                  ),
                  onTap: () {
                    setState(() {});
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Center(
                      child: Image.asset(
                        'images/linkedin.png',
                        height: 40,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(20),
                      ),
                  ),
                  onTap: () {
                    setState(() {});
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _follower(){
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              const Text('80',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              const Text('Posts'),
            ],
          ),
          Column(
            children: [
              const Text('110',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              const Text('Followers'),
            ],
          ),
          Column(
            children: [
              const Text('152',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              const Text('Following'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tombolFollow(){
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: MaterialButton(
              onPressed: (){},
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Message',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: MaterialButton(
              onPressed: (){},
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    width: 2,
                    color: Colors.blue
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _posts(){
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('images/lieur.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('images/parabola.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('images/siberpang.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('images/WRX1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('images/WRX2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('images/FREMM.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      _profilePic(),
                      _Profile(),
                      _follower(),
                      _tombolFollow(),
                      _posts(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
