import 'package:conatus/custom_text_feild.dart';
import 'package:conatus/main.dart';
// import 'package:conatus/strorage.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_flare/actors/smart_flare_actor.dart';

Future<bool> setFilled(bool form) async {
  SharedPreferences prf = await SharedPreferences.getInstance();
  prf.setBool("formFilled", form);
}

Future<bool> getFilled() async {
  SharedPreferences prf = await SharedPreferences.getInstance();
  bool formFilled = prf.getBool("formFilled");
  return formFilled;
}

class FormCOD extends StatefulWidget {
  @override
  _FormCODState createState() => _FormCODState();
}

class _FormCODState extends State<FormCOD> {
  final name1controller = TextEditingController();
  final name2controller = TextEditingController();
  final email1controller = TextEditingController();
  final email2controller = TextEditingController();
  final stno1controller = TextEditingController();
  final stno2controller = TextEditingController();
  final teamcontroller = TextEditingController();

  List<String> branches = ["CSE","IT","ECE","EI","EN","ME","CE","CS/IT","CS"];
  List<String> branches2 = ["CSE","IT","ECE","EI","EN","ME","CE","CS/IT","CS" ];
  
  int year1;
  int year2;
  DioError error;
  String branch1;
  String branch2;
  int responseCode=000;
  String element="noElement";
  bool isLoading;
  bool isFilled;

  initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
   
  ]);
    getFilled().then((value) {
      setState(() {
        isFilled = value;
      });
    });

    isLoading = false;
    super.initState();
  }

  String url = "https://conatus-app2020.herokuapp.com/api/register";
  Future<String> makeRequest(
      String name1,
      String stno1,
      String name2,
      String stno2,
      String email1,
      String email2,
      String branch1,
      String branch2,
      
      String teamname,
      int year1,
      int year2) async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap({
      "name_1": name1,
      "name_2": name2,
      "email_1": email1,
      "email_2": email2,
      "team_name": teamname,
      "branch_1": branch1,
      "branch_2": branch2,
      "student_number_1": stno1,
      "student_number_2": stno2,
      "year_1": year1,
      "year_2": year2
    });
    
    response = await dio.post(url, data: formData).catchError((e)=>setState((){error=e;}));
    setState(() {
      element = response.data['stone'].toString();
      responseCode=response.statusCode;
    });
    
    
// print(response.data.toString());
  }
  Future<void> _neverSatisfied() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: grey,
        title: Text('Please enter all the details',style: TextStyle(color: primal),),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Don\'t leave any entry empty',style: TextStyle(color: Colors.white),),
             
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('OK, Got it'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
Future<void> _email() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: grey,
        title: Text('Please enter a valid email',style: TextStyle(color: primal),),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('An invalid email will cause the registration to fail',style: TextStyle(color: Colors.white),),
             
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('OK, Got it'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
Future<void> _stno() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: grey,
        title: Text('Please enter a valid Student no.',style: TextStyle(color: primal),),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('An invalid student no. will cause the registration to fail',style: TextStyle(color: Colors.white),),
             
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('OK, Got it'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
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
            controller: controller,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.white),
            keyboardType: inputType,
            cursorColor: Colors.white,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  fontSize: 15,
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
    Widget FormField2(
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
            maxLength: 7,
            controller: controller,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.white),
            keyboardType: inputType,
            cursorColor: Colors.white,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  fontSize: 15,
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


    return error==null&&responseCode==000&&element=="noElement"?Scaffold(
      body: GestureDetector(
        onTap:(){
           FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
        },
              child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0x99000000),
                          borderRadius: BorderRadius.circular(40)),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment(-1, -1),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(Icons.close, color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              children: <Widget>[
                                Image(
                                  image:
                                      ExactAssetImage("assets/logo_full_png.png"),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      child: Column(
                                        children: <Widget>[
                                          Text("Team member 1",textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize:MediaQuery.of(context).size.width*0.040,
                                                decoration:
                                                    TextDecoration.underline,
                                              )),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          FormField(
                                              controller: name1controller,
                                              inputType: TextInputType.text,
                                              hint: "Enter name",
                                              label: "Name"),
                                          FormField(
                                              controller: email1controller,
                                              inputType:
                                                  TextInputType.emailAddress,
                                              hint: "Enter email",
                                              label: "Email"),
                                          FormField2(
                                              controller: stno1controller,
                                              inputType: TextInputType.number,
                                              hint: "Enter student no.",
                                              label: "Student No."),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              DropdownButton<int>(
                                                hint: Text(
                                                  "Year",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                ),
                                                value: year1,
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.white,
                                                ),
                                                iconSize: 24,
                                                elevation: 16,
                                                style: TextStyle(
                                                    color: Colors.white),
                                                underline: Container(
                                                  height: 2,
                                                  color: Colors.white,
                                                ),
                                                onChanged: (int newValue) {
                                                  setState(() {
                                                    year1 = newValue;
                                                  });
                                                },
                                                items: <int>[1, 2, 3, 4]
                                                    .map<DropdownMenuItem<int>>(
                                                        (int value) {
                                                  return DropdownMenuItem<int>(
                                                    value: value,
                                                    child: Text("$value"),
                                                  );
                                                }).toList(),
                                              ),
                                              DropdownButton<String>(
                                                hint: Text(
                                                  "Branch",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                ),
                                                value: branch1,
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.white,
                                                ),
                                                iconSize: 24,
                                                elevation: 16,
                                                style: TextStyle(
                                                    color: Colors.white),
                                                underline: Container(
                                                  height: 2,
                                                  color: Colors.white,
                                                ),
                                                onChanged: (String newValue) {
                                                  print(newValue);
                                                  setState(() {
                                                    branch1 = newValue;
                                                  });
                                                },
                                                items: branches.map<
                                                        DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                        width: 1.5,
                                        height: 350,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      child: Column(
                                        children: <Widget>[
                                          Text("Team member 2",textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: MediaQuery.of(context).size.width*0.04,
                                                decoration:
                                                    TextDecoration.underline,
                                              )),
                                          SizedBox(height: 20),
                                          FormField(
                                              controller: name2controller,
                                              inputType: TextInputType.text,
                                              hint: "Enter name",
                                              label: "Name"),
                                          FormField(
                                              controller: email2controller,
                                              inputType:
                                                  TextInputType.emailAddress,
                                              hint: "Enter email",
                                              label: "Email"),
                                          FormField2(
                                              controller: stno2controller,
                                              inputType: TextInputType.number,
                                              hint: "Enter student no.",
                                              label: "Student No."),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              DropdownButton<int>(
                                                hint: Text(
                                                  "Year",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                ),
                                                value: year2,
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.white,
                                                ),
                                                iconSize: 24,
                                                elevation: 16,
                                                style: TextStyle(
                                                    color: Colors.white),
                                                underline: Container(
                                                  height: 2,
                                                  color: Colors.white,
                                                ),
                                                onChanged: (int newValue) {
                                                  setState(() {
                                                    year2 = newValue;
                                                  });
                                                },
                                                items: <int>[1, 2, 3, 4]
                                                    .map<DropdownMenuItem<int>>(
                                                        (int value) {
                                                  return DropdownMenuItem<int>(
                                                    value: value,
                                                    child: Text("$value"),
                                                  );
                                                }).toList(),
                                              ),
                                              DropdownButton<String>(
                                                hint: Text(
                                                  "Branch",
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.4)),
                                                ),
                                                value: branch2,
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.white,
                                                ),
                                                iconSize: 24,
                                                elevation: 16,
                                                style: TextStyle(
                                                    color: Colors.white),
                                                underline: Container(
                                                  height: 2,
                                                  color: Colors.white,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    branch2 = newValue;
                                                  });
                                                },
                                                items: branches2.map<
                                                        DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                FormField(
                                    label: "Team name",
                                    hint: "Your team name",
                                    controller: teamcontroller),
                                SizedBox(height: 30),
                                GestureDetector(

                                  onTap: () {
                                    RegExp regExp = new RegExp(
  r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$",
  caseSensitive: false,
  multiLine: false,
);

                                    if(name1controller.text==null||
                                            stno1controller.text==null||
                                            name2controller.text==null||
                                            stno2controller.text==null||
                                            email1controller.text==null||
                                            email2controller.text==null||
                                            branch1==null||
                                            branch2==null||
                                            teamcontroller.text==null||
                                            year1==null||
                                            year2==null)
                                            {
                                              _neverSatisfied();
                                            }

                                            
                                            
                                            else{

                                              if(!regExp.hasMatch(email1controller.text)||!regExp.hasMatch(email2controller.text)){
                                            
                                              _email();
                                            }
                                            else{if(stno1controller.text.toString().compareTo("1900000")>1||stno1controller.text.toString().compareTo("1600000")<1||stno2controller.text.toString().compareTo("1900000")>1||stno2controller.text.toString().compareTo("1600000")<1){
                                               _stno();
                                            }
                                            else{
                                              if(teamcontroller.text!=null&&teamcontroller.text!=""){
                                              setState(() {
                                      isLoading = true;
                                    });

                                    makeRequest(
                                            name1controller.text,
                                            stno1controller.text,
                                            name2controller.text,
                                            stno2controller.text,
                                            email1controller.text,
                                            email2controller.text,
                                            branch1,
                                            branch2,
                                            teamcontroller.text,
                                            year1,
                                            year2)
                                        .then((String a) {
                                      isLoading = false;
                                      Navigator.pop(context);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Scaffold(
                                                  backgroundColor: Colors.black,
                                                  body: Center(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(40.0),
                                                      child: Container(
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Align(alignment: Alignment(0,0),
                                                                                                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: <Widget>[
                                                                  Text("YOU SHALL START FROM:",style: GoogleFonts.paytoneOne(
                              fontSize:  MediaQuery.of(context).size.height*0.038, color: Colors.white),textAlign: TextAlign.center,),
                                                                  SizedBox(height:
                                                                    MediaQuery.of(context)
                                                                            .size
                                                                            .width *0.35*
                                                                        1024 /
                                                                        768,),
                                                                  Text(element,style: GoogleFonts.paytoneOne(
                              fontSize:  MediaQuery.of(context).size.height*0.038, color: Colors.white),textAlign: TextAlign.center,),
                                                                  SizedBox(height: 30,),
                                                                  Text("Both Of the participants can check for an email confirming their participation",style:  GoogleFonts.montserrat(
                            fontSize:  MediaQuery.of(context).size.height*0.0125, color: Color(0x99ffffff)),textAlign: TextAlign.center,),
                                                              ],),
                                                            ),
                                                            
                                                            Align(alignment: Alignment(0,0),
                                                                                                                    child: SmartFlareActor(
                                                                filename:
                                                                    "assets/element.flr",
                                                                width:
                                                                    MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.6,
                                                                height:
                                                                    MediaQuery.of(context)
                                                                            .size
                                                                            .width *0.6*
                                                                        1024 /
                                                                        768,
                                                                startingAnimation:
                                                                    element.toLowerCase(),
                                                              ),
                                                            ),
                                                            
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ))));

                                                 
                                    });}else{
                                      _neverSatisfied();
                                    }
                                    
                                    }}
                                            }
                                    
                                  },
                                  child: Container(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width * 0.65,
                                    child: Center(
                                        child: Text(
                                      "SUBMIT",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    )),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(40)),
                                  ),
                                )
                                // GestureDetector(onTap: (){},)
                              ],
                            ),
                          ),
                        ],
                      )),
                )),
              ),
            ),
            isLoading
                ? SingleChildScrollView(
                    child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.height,
                        color: Colors.black54,
                        child: Center(
                          child: CircularProgressIndicator(),
                        )),
                  )
                : Container()
          ],
        ),
      ),
    ):Scaffold(body:Center(
      child: Column(
        children: <Widget>[
          Expanded(child: Align(alignment: Alignment(-1,-1),child:GestureDetector(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(height: 50,width: 50,child: Icon(Icons.arrow_back_ios,color:Colors.white),),
          ),onTap: (){Navigator.pop(context);},))),
          Container(width: MediaQuery.of(context).size.width*0.8,child: Center(child: error.toString()=="DioError [DioErrorType.RESPONSE]: Http status error [300]"? Text("Sorry a Participant with similar credentials exists",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,):Text("Something went wrong",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,))),
          
          SizedBox(height: 20,),
          SmartFlareActor(filename: error.toString()=="DioError [DioErrorType.RESPONSE]: Http status error [300]"? "assets/dup.flr":"assets/cro.flr",height: error.toString()=="DioError [DioErrorType.RESPONSE]: Http status error [300]"? 100:50,width: error.toString()=="DioError [DioErrorType.RESPONSE]: Http status error [300]"? 100:50,
          startingAnimation: error.toString()=="DioError [DioErrorType.RESPONSE]: Http status error [300]"? "action":"appear",
          ),
          SizedBox(height: 20,),
          Center(child: Text("Try Again",style: TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
          Expanded(child:Container())
        ],
      ),
    ));
  }
}
