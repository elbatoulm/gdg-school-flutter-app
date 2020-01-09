import 'package:flutter/material.dart';


class MyFoodPage extends StatefulWidget {
  @override
  _foodPageState createState() {

    return _foodPageState();
  }

}

class _foodPageState extends State<MyFoodPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 50, 0, 0),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                color: Colors.white,
                child : Icon (Icons.arrow_back, 
                  color: Colors.black,
                  size: 30,
                ),
                  onPressed: () {
                  Navigator.pop(context);
                  }
              ),
            ],
          ),
          SizedBox(height: 60,),
          Column(
            children: <Widget>[
              Container(
                    width: 300,
                    child: Text('FANTASTIC',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight : FontWeight.w500,
                        fontSize : 40
                      )),
                  ),
              Container(
                    width: 300,
                    child: Text('BEEF RAMYEN',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight : FontWeight.w500,
                        fontSize : 40
                      )),
                  ),
              SizedBox(
                height: 20,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20,),
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('r.jpg'),
                            ),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.white, width: 2.0),
                          ),
                      ),
                      Positioned(
                        left: 20,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('q.jpg'),
                            ),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.white, width: 2.0),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 45,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('woobin.jpg'),
                            ),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.white, width: 2.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 60,),
                  Text('12,453 people like this',
                  style : TextStyle (
                    color : Colors.grey,
                    fontWeight : FontWeight.w200,
                    fontSize: 16,
                  ))
                ],
              )
            ],
          ),
          SizedBox(height: 30,),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(12.0),
              children: <Widget>[
                Container(
                  height: 170,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('ram.jpeg')
                    )
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(12),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('ram4.jpg')
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.all(12),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('ram3.jpeg')
                        )
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(12),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('ram7.jpeg')
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.all(12),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('ram5.jpeg')
                        )
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(12),
                  height: 170,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('ram6.jpeg')
                    )
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 18,),
              Container(
                height: 40,
                width: 40,
                child: Icon(Icons.list, color: Colors.white,),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(100)
                ),
              ),
              SizedBox(width: 18,),
              Container(
                    height: 20,
                    width: 200,
                    child: Text('ABOUT', 
                      style: TextStyle(
                        color : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  ),
            ],
          ),
          Column(
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                    width: 220,
                    height: 100,
                    padding: EdgeInsets.all(5),
                    child: Text('Lorem Ipsum er ganske enkelt fyldtekst fra print- og typografiindustrien. Lorem Ipsum har været standard fyldtekst ',),
                  ),
                  )
                ],
              ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 18,),
              Container(
                height: 40,
                width: 40,
                child: Icon(Icons.alarm, color: Colors.white,),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(100)
                ),
              ),
              SizedBox(width: 18,),
              Container(
                    height: 20,
                    width: 200,
                    child: Text('OPEN HOURS', 
                      style: TextStyle(
                        color : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  ),
            ],
          ),
          Column(
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                    width: 200,
                    height: 100,
                    padding: EdgeInsets.all(5),
                    child: Text('Everyday . 10am - 10pm',),
                  ),
                  )
                ],
              ),
        ],
      ),
    );
  }
}
