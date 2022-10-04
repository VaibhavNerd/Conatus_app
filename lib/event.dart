import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_flare/actors/smart_flare_actor.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  List<String> asset = ["assets/odyssey.png", "assets/doc.png", "assets/c.png"];

  @override
  Widget build(BuildContext context) {
    List<Widget> frontWidgets = [
      EventOneFront(
          title: "DOC: Dawn of Crisis",
          aboutEve:
              "Team Conatus organised it’s annual event under the name “DOC: DAWN OF CRISIS” which was a 2 day event, on 12th and 13th March, 2019. First day was a field event and second day was a lab event. It was a team event where each team consisted of two participants. Around 300 Teams participated in the event summing up to 600 student from all branches and years.",
          img1:
              "https://scontent.fdel1-2.fna.fbcdn.net/v/t1.0-9/s960x960/53566462_2206655322725482_6683075344297099264_o.jpg?_nc_cat=109&_nc_sid=2d5d41&_nc_ohc=vK-n52bM2ugAX9NdFAX&_nc_ht=scontent.fdel1-2.fna&_nc_tp=7&oh=a3bd2957ad4c10e1e470e6ee11d9893b&oe=5EF3F365",
          img2:
              "https://scontent.fdel1-3.fna.fbcdn.net/v/t1.0-9/s960x960/53688816_2208314162559598_5223711105691418624_o.jpg?_nc_cat=103&_nc_ohc=LXwXsIs6OZIAX9uzq5C&_nc_ht=scontent.fdel1-3.fna&_nc_tp=7&oh=a510d5ffbd40579011ad945b6711838e&oe=5EB8B78D",
          imgm:
              "https://scontent.fdel1-4.fna.fbcdn.net/v/t1.0-9/53179920_2216727631718251_399316685900742656_n.jpg?_nc_cat=100&_nc_sid=110474&_nc_eui2=AeFNYIGmfM7xi5-HLrSmCQqaDgHCku136K3_0kDpDUTXRh_WMyzWNezjbsEOikel1eJxktT9fPmms5J6uSdpwS3Rv0rgSUp_LGYqJ0eC0mf6mg&_nc_ohc=y5gOHPQ80dwAX-_GYpt&_nc_ht=scontent.fdel1-4.fna&oh=aedadb041feee3625cf1321afbf387dd&oe=5EC09E4A"),
      EventOneFront(
        title: "C Classes",
        aboutEve:
            "Team Conatus conducted the C CLASSES for the 1st Year students of our collge. The classes were taken in the CSE labs from 4:00 PM to 6:00 PM on every working Monday, Tuesday, Wednesday and Thursday starting from 29th January 2018 till 5th March 2018. The mentors were the 3rd Year students of Team Conatus.",
        img1:
            "https://scontent.fdel1-2.fna.fbcdn.net/v/t31.0-8/s960x960/26952138_1677162505674769_9174785051095388879_o.jpg?_nc_cat=101&_nc_sid=110474&_nc_eui2=AeEbeEOz9gJaFiJHgLXhYmytOAbACKcNbrNfHMHn08hW-ju6sA4RE1SjRyxZnxC5aK29UzTFVzod4hVuHPP8I4qnjlhyMVnBknaL80vg8KKvwg&_nc_ohc=xDgGBxSTHhUAX8yy9N-&_nc_ht=scontent.fdel1-2.fna&_nc_tp=7&oh=56714e4d8823fc6b4b47fa6adb83b5ff&oe=5EBDB68C",
        img2:
            "https://scontent.fdel1-3.fna.fbcdn.net/v/t31.0-8/26850258_1676509719073381_6364194205564033827_o.jpg?_nc_cat=103&_nc_sid=dd9801&_nc_eui2=AeESMxbULVfYmFtUejgUUh9ZAj9WMk7aA1WHncJTDqR0yrAVmkigUfouh4zHRVPGDf3vVy_ReK7oNA1thyGq5zObaoAVQyD3Uzn35twpqQ_90A&_nc_ohc=rCYlsKUot40AX8uMwQD&_nc_ht=scontent.fdel1-3.fna&oh=216cdb232e6cf5792725e58b4e01a605&oe=5EBC2523",
        imgm:
            "https://scontent.fdel1-3.fna.fbcdn.net/v/t1.0-9/29339791_1731074930283526_8315468233117270016_o.jpg?_nc_cat=103&_nc_sid=110474&_nc_eui2=AeFENLFstLc1Sol6bO03ttoPAZ4tLZ37R6B8n7g46SuMJBpsOARf_XAvYDhojyRe9PT1xsANsxUa4yKPVv79YOOLAeGAY5YYLmwXB-A64SpiZw&_nc_ohc=eFXUiPDSN3kAX8iOg0T&_nc_ht=scontent.fdel1-3.fna&oh=b20e4ea871125d7491f49ce8656a8183&oe=5EF50234",
      ),
      EventOneFront(
          title: "Odyssey",
          aboutEve:
              "Team Conatus organized the event ODYSSEY - an online coding, gaming and designing contest on 13th and 14th March 2018. ODYSSEY was an exciting series of events which brightened the monotonous college life with a tincture of enjoyment, competence and excellence.",
          img1:
              "https://scontent.fdel1-1.fna.fbcdn.net/v/t1.0-9/s960x960/28661186_1720992491291770_7645049397562048512_o.jpg?_nc_cat=110&_nc_sid=2d5d41&_nc_eui2=AeFcSuXs8LZGRdhUUQcDafc2dYjsg1B0lZvHXdGcRIKjz50BLIsS8I7WwW3mWbtmtr7MyM8Hzbw4D9V3lZbGlJx9h7pTAxJyLmdEnPt_zoy0LA&_nc_ohc=6YpedSum4zsAX9POlAi&_nc_ht=scontent.fdel1-1.fna&_nc_tp=7&oh=1b3b3a3610d4318948c7eb7576e051f6&oe=5EE93B79",
          img2:
              "https://scontent.fdel1-3.fna.fbcdn.net/v/t1.0-9/29027954_1725588614165491_812878034565595136_o.jpg?_nc_cat=103&_nc_sid=dd9801&_nc_eui2=AeENNORGFxR--iInDCKXdiKjtcIWg6DyINSaAq9RvC2zpQceLobLf8HPcy4VhvQ8iAqdKQE2-MIAVIUkU_GNaRcF5O7kQY6OMj8DhvQvzW7aFQ&_nc_ohc=0rKgMGif1yAAX8dzhpW&_nc_ht=scontent.fdel1-3.fna&oh=cff634ba47aea3dc6b0dd1d4a07a0d07&oe=5EB6D382",
          imgm:
              "https://scontent.fdel1-1.fna.fbcdn.net/v/t1.0-9/29244106_1731074200283599_8702102189830569984_o.jpg?_nc_cat=110&_nc_sid=110474&_nc_eui2=AeEWUyLiDhFPQi6LyeoFncHCHy9WXDS3a4gmhYtf1pKg9t8i2dHPhbwbooifw3EJzEO_DNdGoVlHXU5DDpCHLwEDbG3fXzUVD1M5W5eHdFXsdg&_nc_ohc=DyXWDMuZ-5IAX_4FsII&_nc_ht=scontent.fdel1-1.fna&oh=a27c8dacee6ab212ec4df51cc297c5aa&oe=5EB72E1F")
    ];
    List<Widget> backWidgets = [
      EventOneBack(
        asset: "assets/doc.png",
      ),
      EventOneBack(
        asset: "assets/c.png",
      ),
      EventOneBack(
        asset: "assets/odyssey.png",
      )
    ];
    return Scaffold(
        backgroundColor: grey,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: ExactAssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          )),
          child: Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment(-1, -1),
                  child: SmartFlareActor(
                      width: MediaQuery.of(context).size.width * 0.85,
                      startingAnimation: "Untitled",
                      height:
                          MediaQuery.of(context).size.width * 0.85 * 768 / 437,
                      filename: "assets/p1top.flr")),
              Align(
                  alignment: Alignment(1, 1),
                  child: SmartFlareActor(
                      width: MediaQuery.of(context).size.width * 0.85,
                      startingAnimation: "noswipe",
                      height:
                          MediaQuery.of(context).size.width * 0.85 * 768 / 437,
                      filename: "assets/p1top.flr")),
              Align(
                alignment: Alignment(0, 0),
                child: CarouselSlider(
                  height: MediaQuery.of(context).size.height * 0.9,
                  autoPlay: false,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 200),
                  items: [0, 1, 2].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Flipper(
                            front: frontWidgets[i],
                            back: backWidgets[i],
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),

          //     Center(
          //       child:  Flipper(front: Container(),back: Container()

          // )),
        ));
  }
}

class Flipper extends StatelessWidget {
  Widget front, back;
  Flipper({@required this.front, @required this.back});
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL, // default
      front: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: grey,
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000),
                blurRadius: 4.0,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Color(0x1fffffff),
                blurRadius: 4.0,
                offset: Offset(-4, -4),
              ),
            ]),
        child: back,
      ),
      back: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: grey,
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000),
                blurRadius: 4.0,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Color(0x1fffffff),
                blurRadius: 4.0,
                offset: Offset(-4, -4),
              ),
            ]),
        child: front,
      ),
    );
  }
}

class EventOneFront extends StatelessWidget {
  String title, aboutEve, img1, img2, imgm;
  EventOneFront({this.title, this.aboutEve, this.img1, this.img2, this.imgm});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.8,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.25,
                  color: grey,
                  child: Center(
                      child: Image(
                          image: NetworkImage(imgm), fit: BoxFit.fitHeight))),
              SizedBox(height: 20),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
              SizedBox(height: 20),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    aboutEve,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, color: Colors.white54),
                  )),
              SizedBox(height: 40),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                height: MediaQuery.of(context).size.height*0.35,
                                width:  MediaQuery.of(context).size.height*0.35,
                                color: grey,
                                child: Center(
                                    child: Image(
                                        image: NetworkImage(img1),
                                        fit: BoxFit.fitHeight))),
                            SizedBox(width: 20),
                            Container(
                               height: MediaQuery.of(context).size.height*0.35,
                                width:  MediaQuery.of(context).size.height*0.35,
                                color: grey,
                                child: Center(
                                    child: Image(
                                        image: NetworkImage(img2),
                                        fit: BoxFit.fitHeight))),
                          ])))
            ],
          ),
        ),
      ),
    );
  }
}

class EventOneBack extends StatelessWidget {
  String asset;
  EventOneBack({@required this.asset});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      child: Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text(
            "OUR EVENTS",
            style: GoogleFonts.paytoneOne(
                              fontSize:  MediaQuery.of(context).size.height*0.0224, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 2,
            color: primal,
          ),
          Expanded(
              flex: 7,
              child: Container(
                  height: MediaQuery.of(context).size.width*0.35,
                  width: MediaQuery.of(context).size.width*0.35,
                  child: Image(
                    image: ExactAssetImage(asset),
                  ))),
          Container(
            height: 2,
            color: primal,
          ),
          SizedBox(height: 80,child: Align(alignment: Alignment(0, 0),child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: <Widget>[
            Container(height:20,width:20,child:Image(image: ExactAssetImage("assets/tap.png"),)),
            SizedBox(width:10),
            Text("TAP THE CARD FOR MORE",style: TextStyle(color: Colors.white,fontSize: 13),)
          ],),),)
        ],
      ),
    );
  }
}
