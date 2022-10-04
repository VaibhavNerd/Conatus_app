import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:conatus/event.dart';
import 'package:conatus/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_flare/smart_flare.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'coor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main(){
      runApp(MaterialApp(home: SplashScreen(),));
  
}

const primal = Color(0xff38bcf7);
const grey = Color(0xff090909);


Future<String> setUserName (name) async{
   SharedPreferences prf= await SharedPreferences.getInstance();
   prf.setString("userName", name);
}
Future<String> getUserName () async{
  SharedPreferences prf= await SharedPreferences.getInstance();
  String userName=prf.getString("userName");
  return userName;
}


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

Future<Timer> loadData() async {
  return new Timer(Duration(seconds: 7), onDoneLoading);
}

onDoneLoading() async {
  print("done");
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp()));
  
}

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
   
  ]);
    loadData();
    // TODO: implement initState

    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,
body: Container(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,
color: grey,
child: 
  Stack(
    children: <Widget>[
       Align(
              alignment: Alignment(-1, -1),
              child: SmartFlareActor(
                  width: MediaQuery.of(context).size.height * 0.85/ 768 * 437,
                  startingAnimation: "Untitled",
                  height: MediaQuery.of(context).size.height * 0.85 ,
                  filename: "assets/p1top.flr")),
          Align(
              alignment: Alignment(1, 1),
              child: SmartFlareActor(
                  width: MediaQuery.of(context).size.height * 0.85/ 768 * 437,
                  startingAnimation: "noswipe",
                  height: MediaQuery.of(context).size.height * 0.85 ,
                  filename: "assets/p1top.flr")),
      Align(alignment: Alignment(0,0),child: SmartFlareActor(width: MediaQuery.of(context).size.width, startingAnimation: "splash",height: MediaQuery.of(context).size.height, filename: "assets/p1top.flr")),
    ],
  ),
          

),
      
    );
  }
}


class MyApp extends StatefulWidget  {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String userName="";
  @override
  void initState() {
     getUserName().then((value){
      
      setState(() {
        userName=value;
        print(userName);
      });});
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: userName==""?Loading():userName==null?Namer():Landing()),
      theme: ThemeData(canvasColor: Colors.black),
    );
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class Namer extends StatefulWidget {

  @override
  _NamerState createState() => _NamerState();
}

class _NamerState extends State<Namer> {
  final controller= new TextEditingController();
@override
  void initState() {SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
   
  ]);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
Widget FormField(
        {String hint, String label, TextInputType inputType, controller}) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
            textAlign: TextAlign.start,
          ),
          TextField(
            maxLength: 15,
            controller: controller,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.white),
            keyboardType: inputType,
            cursorColor: Colors.white,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.4),
                ),
                alignLabelWithHint: true,
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.white.withOpacity(0.4))),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white30)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      );
    }

    return Scaffold(backgroundColor: Colors.black,body:Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(width:MediaQuery.of(context).size.width*0.8,child: Text("What's your name?",style: GoogleFonts.paytoneOne(
                              fontSize:  MediaQuery.of(context).size.height*0.038, color: Colors.white),textAlign: TextAlign.center,)),
          SizedBox(height:10),
          FormField(hint:"Enter name here",label:"",inputType:TextInputType.text,controller:controller),
          
          Text("(Maximum 12 characters)",style: GoogleFonts.montserrat(
                              fontSize:  MediaQuery.of(context).size.height*0.013, color: Colors.white),textAlign: TextAlign.center,),
                              SizedBox(height:15),
          GestureDetector(onTap: (){setUserName(controller.text);Navigator.push(context, MaterialPageRoute(builder: (context)=>Landing()));},child: Container(width:300,height:50,decoration: BoxDecoration(borderRadius:BorderRadius.circular(40),color:Colors.white,),child: Center(child: Text("Submit")),))
        ],
      ),
    ));
  }
}

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int current;
  @override
  void initState() {
   
    current = 1; // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: grey,
          body: Stack(children: <Widget>[
            Align(
              alignment: Alignment(1, 0),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height,
                  child: current == 1
                      ? Home()
                      : current == 2
                          ? Coor()
                          : current == 3 ? EventPage() : Contact()),
            ),
            Align(
              alignment: Alignment(-1, 0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.12,
                decoration: BoxDecoration(color: grey, boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 9.0,
                    offset: Offset(0, 4),
                  )
                ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width * 0.14,
                      child: Image(
                        image: ExactAssetImage("assets/conatus.png"),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                             print(MediaQuery.of(context).size.height);
                            current = 1;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.width * 0.14,
                          color: current == 1 ? primal : Colors.transparent,
                          child: Icon(
                            Icons.home,
                            size: MediaQuery.of(context).size.width * 0.05,
                            color: current == 1 ? grey : primal,
                          ),
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            current = 2;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.width * 0.14,
                          color: current == 2 ? primal : Colors.transparent,
                          child: Icon(
                            Icons.person,
                            size: MediaQuery.of(context).size.width * 0.05,
                            color: current == 2 ? grey : primal,
                          ),
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            current = 3;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.width * 0.14,
                          color: current == 3 ? primal : Colors.transparent,
                          child: Icon(
                            Icons.calendar_today,
                            size: MediaQuery.of(context).size.width * 0.05,
                            color: current == 3 ? grey : primal,
                          ),
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            current = 4;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.width * 0.14,
                          color: current == 4 ? primal : Colors.transparent,
                          child: Icon(
                            Icons.phone,
                            size: MediaQuery.of(context).size.width * 0.05,
                            color: current == 4 ? grey : primal,
                          ),
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FormCOD()));
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.12,
                                height:
                                    MediaQuery.of(context).size.width * 0.14,
                                child: Image(
                                  image: ExactAssetImage("assets/cod.png"),
                                )))),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[LandingOne(), LandingTwo()],
      ),
    );
  }
}

class LandingOne extends StatefulWidget {
  @override
  _LandingOneState createState() => _LandingOneState();
}

class _LandingOneState extends State<LandingOne> {
  String name = "User";
  @override
  void initState() {
    getUserName().then((value){
      
      setState(() {
        name=value;
        print(name);
      });});
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: MediaQuery.of(context).size.width * 0.86,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: ExactAssetImage("assets/bg.jpg"),
        fit: BoxFit.cover,
      )),
      child: Stack(
        children: <Widget>[
         Align(alignment: Alignment(1,-1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "top",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),
      Align(alignment: Alignment(-1,1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "bottom",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment(-0.95, -0.95),
                  child: Padding(
                    padding: EdgeInsets.only(top: 120, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hi",
                          style: GoogleFonts.paytoneOne(
                              fontSize:  MediaQuery.of(context).size.height*0.038, color: Colors.white),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "$name",
                          style: GoogleFonts.paytoneOne(
                              fontSize:  MediaQuery.of(context).size.height*0.0324, color: primal),
                        ),
                        Text(
                          ".  .  .  .  .  .  .  .  .  .  .  .",
                          style: GoogleFonts.paytoneOne(
                              fontSize:  MediaQuery.of(context).size.height*0.0324, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height:  MediaQuery.of(context).size.height*0.0216,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  
                    child: AutoSizeText(
                                          
                        "Conatus is the technical society of Computer Science and Information Technology in Ajay Kumar Garg Engineering College which brings to its students the illumination of the knowledge glow in IT sphere with its marvellous events, workshops and seminars. It was founded on 10th October, 2005",
                        style: GoogleFonts.montserrat(
                            fontSize:  MediaQuery.of(context).size.height*0.0125, color: Color(0x99ffffff)),
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                    ),
                  
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.0324,
                ),
                Center(
                  child: CarouselSlider(
                    height:  MediaQuery.of(context).size.height*0.27,
                    autoPlay: true,
                    viewportFraction: 0.9,
                    autoPlayInterval: Duration(milliseconds: 2500),
                    enlargeCenterPage: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 200),
                    items: ["assets/1.jpg", "assets/2.jpg", "assets/3.jpg"]
                        .map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height:  MediaQuery.of(context).size.height*0.24,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(3, 3),
                                        color: Colors.black,
                                        blurRadius: 10)
                                  ],
                                  color: grey,
                                  image: DecorationImage(
                                    image: ExactAssetImage(i),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LandingTwo extends StatefulWidget {
  @override
  _LandingTwoState createState() => _LandingTwoState();
}

class _LandingTwoState extends State<LandingTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.86,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: ExactAssetImage("assets/bg.jpg"),
        fit: BoxFit.cover,
      )),
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment(-1, -1.6),
              child: SmartFlareActor(
                  width: MediaQuery.of(context).size.height * 0.85/ 768 * 437,
                  startingAnimation: "Untitled",
                  height: MediaQuery.of(context).size.height * 0.85 ,
                  filename: "assets/p1top.flr")),
          Align(
              alignment: Alignment(1, 1.6),
              child: SmartFlareActor(
                  width: MediaQuery.of(context).size.height * 0.85/ 768 * 437,
                  startingAnimation: "noswipe",
                  height: MediaQuery.of(context).size.height * 0.85 ,
                  filename: "assets/p1top.flr")),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Align(
                  alignment: Alignment(0.95, -0.95),
                  child: Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/8.5, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "OUR",
                          style: GoogleFonts.paytoneOne(
                              fontSize: MediaQuery.of(context).size.height*0.038, color: Colors.white),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "SERVICES",
                          style: GoogleFonts.paytoneOne(
                              fontSize: MediaQuery.of(context).size.height*0.038, color: Colors.white),
                        ),
                        Text(
                          ".  .  .  .  .  .  .  .  .  .  .  .",
                          style: GoogleFonts.paytoneOne(
                              fontSize: MediaQuery.of(context).size.height*0.0324, color: Colors.white),
                        ),
                        SizedBox(
                  height: MediaQuery.of(context).size.height*0.0185,
                ),
               Padding(
                  padding: const EdgeInsets.only(left: 20),
                  
                    child: AutoSizeText(
                                          
                        "In the last decade, Conatus has evolved as a technical base for its own members as well as the rest of the college. It has brought to the students the vast unexplored “technical horizon” within their grasp hold. Besides being the first technical society of AKGEC, Conatus leads the technological upfront by organizing a wide range of activities throughout the year.",
                        style: GoogleFonts.montserrat(
                            fontSize:  MediaQuery.of(context).size.height*0.0125, color: Color(0x99ffffff)),
                      maxLines: 7,
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                    ),
                  
                ),
                
                
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
          ),Align(alignment: Alignment(0,0),child: Column(children: <Widget>[
            Container(height: MediaQuery.of(context).size.height*0.36,),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height*0.0265,
                // ),
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(height: MediaQuery.of(context).size.height*0.35,child: Align(alignment: Alignment(1,-1),child: SmartFlareActor(filename: "assets/service.flr",width: MediaQuery.of(context).size.height*0.45*768/1024,height: MediaQuery.of(context).size.height*0.45,startingAnimation: "run",)),),
                  ),
          ],),)
        ],
      ),
    );
  }
}



class Contact extends StatelessWidget {
  _launchURL(String s) async {
    if (await canLaunch(s)) {
      await launch(s);
    } else {
      throw 'Could not launch $s';
    }
  }
  @override
  Widget build(BuildContext context) {
       double width = MediaQuery.of(context).size.width/423.5293998850261;
    double height = MediaQuery.of(context).size.height/704.705862586474;

    return Container(
       width: MediaQuery.of(context).size.width * 0.86,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: ExactAssetImage("assets/bg.jpg"),
        fit: BoxFit.cover,
      )),
      child: Stack(
        children: <Widget>[
          Align(alignment: Alignment(1,-1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "top",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),
        Align(alignment: Alignment(1,1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "noswipe",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),
           
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment(-1,0),
                        child: Padding(
                          padding: const EdgeInsets.only(top:20.0),
                          child: Container(
                            height: width*150,
                            width: width*150,
                            child: Image.asset("assets/conatus.png"),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-1,0),
                                    
                          

                          child: Align(
                            alignment: Alignment(-1,0),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                 
                                  Container(width: width*223.5293998850261,
                                      child: Text("We would love to hear from you",style: TextStyle(fontSize: width*25,color:Colors.white,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.left,)),
                                 
                                ],
                              ),
                            ),
                          ),
                        
                      ),
                      SizedBox(height:20),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.only(top:20),
                            child:Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: <Widget>[
                                    Icon(Icons.call,color: Colors.white,size: width*25,),
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Container(width: width*110,child: Text("Call us on:",style: TextStyle(fontSize: width*18,color:primal,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.left,)),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left:2.0),
                                        child: Text(" 7007799127  8751244551",style: TextStyle(fontSize: width*17,color:Colors.white,wordSpacing: 2),textAlign: TextAlign.left,),
                                      ),

                                    )

                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:30.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(Icons.mail,color: Colors.white,size: width*25,),
                                      Padding(
                                        padding: const EdgeInsets.only(left:8.0,right: 8.0),
                                        child: Container(width: width*110,child: Text("Email:",style: TextStyle(fontSize: width*18,color:primal,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.left,)),
                                      ),
                                      Expanded(child: Padding(
                                        padding: const EdgeInsets.only(left:2.0),
                                        child: Text("teamconatus@gmail.com",style: TextStyle(fontSize: width*17,color:Colors.white,wordSpacing: 2),textAlign: TextAlign.left,),
                                      )),


                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:30.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(Icons.location_city,color: Colors.white,size: width*25,),
                                      Padding(
                                        padding: const EdgeInsets.only(left:8.0,right: 8.0),
                                        child: Container(width:width*110,child: Text("Address:",style: TextStyle(fontSize: width*18,color:primal,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.left,)),
                                      ),
                                      Expanded(child: Padding(padding: EdgeInsets.only(left: 2),child: Text("Ajay Kumar Garg Engineering College, Ghaziabad, Hapur Bypass, U.P, PIN:201009",style: TextStyle(fontSize: width*17,color:Colors.white,wordSpacing: 2),textAlign: TextAlign.left,))),


                                    ],
                                  ),
                                ),
                                SizedBox(height:30),
                                Align(alignment: Alignment(-1,0),
                                                                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start,children: <Widget>[
                                     Padding(

                                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        _launchURL(
                                            'https://www.facebook.com/conatus.akg');
                                      },
                                      child: Card(elevation:100,color: Color(0xff1b1b1b),clipBehavior: Clip.antiAlias,child: Container(height: height*40,width: width*150,child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(right:7.0),
                                            child: Icon(MaterialCommunityIcons.getIconData("facebook"),color: Colors.blueAccent,size:width* 35,),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Join us on:",style: TextStyle(color:Colors.white,fontSize: width*9),),
                                              Text("Facebook",style: TextStyle(color:Colors.blue,fontSize: width*16),)
                                            ],
                                          )
                                        ],
                                      ),)),
                                    ),
                                  ),
                                        Padding(

                                          padding: const EdgeInsets.symmetric(horizontal:8.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              _launchURL(
                                                  'https://www.instagram.com/conatus.akg');
                                            },
                                            child: Card(elevation:100,color: Color(0xff1b1b1b),clipBehavior: Clip.antiAlias,child: Container(height: height*40,width: width*150,child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.only(right:7.0),
                                                  child: Icon(MaterialCommunityIcons.getIconData("instagram"),color: Colors.pinkAccent,size:width* 35,),
                                                ),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Follow us on:",style: TextStyle(color:Colors.white,fontSize: width*9),),
                                              Text("Instagram",style: TextStyle(color:Colors.pinkAccent,fontSize: width*16),)
                                                  ],
                                                )
                                              ],
                                            ),)),
                                          ),
                                        )

                                  ],),
                                )



                              ],
                            )
                          ),
                        )
                      )


                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Container(width: MediaQuery.of(context).size.width* 0.86 ,height:MediaQuery.of(context).size.height ,
//     decoration: BoxDecoration(
//       image:DecorationImage(image: ExactAssetImage("assets/bg.jpg"),fit:BoxFit.cover,
//       ),),
// child: Stack(
//   children: <Widget>[
//     Align(alignment: Alignment(1,-1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "Untitled",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),
//     Align(alignment: Alignment(-1,1),child: SmartFlareActor(width: MediaQuery.of(context).size.width* 0.85, startingAnimation: "noswipe",height: MediaQuery.of(context).size.width* 0.85*768/437, filename: "assets/p1top.flr")),
//     Container(width: MediaQuery.of(context).size.width* 0.9 ,height:MediaQuery.of(context).size.height,
//     child: Column(
//       children: <Widget>[
//         Align(alignment: Alignment(-0.95, -0.95),child: Padding(padding: EdgeInsets.only(top:120,left:20),child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text("OUR",style: GoogleFonts.paytoneOne(fontSize: 35,color:Colors.white),),
//             SizedBox(height:1),
//             Text("SERVICES",style: GoogleFonts.paytoneOne(fontSize: 35,color:Colors.white),),
//             Text(".  .  .  .  .  .  .  .  .  .  .  .",style: GoogleFonts.paytoneOne(fontSize: 30,color:Colors.white),),

//           ],
//         ),),),
//         SizedBox(height: 20,),
//         Padding(
//           padding: const EdgeInsets.only(left: 20,right:20),
//           child: Text("In the last decade, Conatus has evolved as a technical base for its own members as well as the rest of the college. It has brought to the students the vast unexplored “technical horizon” within their grasp hold. Besides being the first technical society of AKGEC, Conatus leads the technological upfront by organizing a wide range of activities throughout the year.",style: GoogleFonts.montserrat(fontSize:12,color:Color(0x99ffffff)),),
//         ),
//         SizedBox(height: 30,),
//         Center(child: CarouselSlider(
//           height:250,
//           autoPlay: true,viewportFraction: 0.9,
//           autoPlayInterval: Duration(milliseconds: 2500),enlargeCenterPage: true,
//           autoPlayAnimationDuration: Duration(milliseconds: 200),

//   items: ["assets/1.jpg","assets/1.jpg","assets/1.jpg"].map((i) {
//         return Builder(
//           builder: (BuildContext context) {
//             return Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 220,
//                 width: MediaQuery.of(context).size.width,

//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [BoxShadow(offset: Offset(3,3),color:Colors.black,blurRadius: 10)],
//                   color: grey,
//                   image: DecorationImage(image: ExactAssetImage(i),fit: BoxFit.cover,)
//                 ),

//               ),
//             );
//           },
//         );
//   }).toList(),
// ),),
//       ],
//     ),
//     )

//   ],
// ),

//               );
