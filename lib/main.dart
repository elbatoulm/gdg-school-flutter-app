import 'package:flutter/material.dart';
import './secondPage.dart';

void main () => runApp(MyApp());

// void main () {
//   runApp(MyApp);
// }

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
          );
        }
      }
      
class MyHomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
  
  }
  
class _MyHomePageState extends State<MyHomePage>{

  var selectedPlace = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 400.0,
                child: null,
              ),
              ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent]
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'shibuya-night.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text('JAPAN',
                  style: TextStyle(
                    fontSize: 80,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.3),
                    letterSpacing : 10.0,
                  ),),
                ),
              ), 
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),
                  child: Icon(Icons.menu),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Colors.red
                  ),
                )
              ),
              Positioned(
                left: 30,
                top: 270, 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Welcome to',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: 'Oswald'
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text('TOKYO',
                          style : TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink
                          )
                        ),
                        Text(',',
                          style : TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          )
                        ),
                        SizedBox(width: 8,),
                        Text('JAPAN',
                          style : TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          )
                        ),
                      ],
                    ),
                  ],
                )
              ),
              Positioned(
                left: 25,
                right: 25,
                top: 350,
                child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade600,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Lets explore some places here...',
                          helperStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                          ),
                          contentPadding: EdgeInsets.only(top:15.0),
                          prefixIcon: Icon(Icons.search, color:Colors.grey) 
                        ),
                      ),
                    ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('BEEF', Icons.fastfood),
              _buildMenuItem('AIRPORT', Icons.local_airport),
              _buildMenuItem('COFFE', Icons.cloud)
            ],
          ),
                    Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('PARK', Icons.terrain),
              _buildMenuItem('MAIL', Icons.mail_outline),
              _buildMenuItem('BRUSH', Icons.brush)
            ],
          ),
                    Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('PARTY', Icons.party_mode),
              _buildMenuItem('RESTAURANT', Icons.restaurant),
              _buildMenuItem('CAKE', Icons.cake)
            ],
          )
        ]
      ),
    );
  }
  Widget _buildMenuItem (String placeName, iconData){
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        selectedMenuOption (placeName);
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyFoodPage()),
  );
      },
      child: AnimatedContainer(
        curve: Curves.easeIn,
        duration: Duration(milliseconds: 300),
        height: selectedPlace == placeName ? 100.0 : 75.0,
        width: selectedPlace == placeName ? 100.0 : 75.0,
        color: selectedPlace == placeName ? Colors.pink : Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[
            Icon(iconData,
            color: selectedPlace == placeName ? Colors.white : Colors.grey,
            size: 20.0,),
            SizedBox(height: 12,),
            Text(placeName,
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: selectedPlace == placeName ? Colors.white : Colors.grey,
              fontSize: 12.0
            ))
          ],
        ),
      ),
    );
  }
  selectedMenuOption (placeName){
    setState(() {
      selectedPlace = placeName;
    });
  }
}
