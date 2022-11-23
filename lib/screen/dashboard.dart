import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_tiket/Widget/Bottom_Navigation_GM.dart';
import 'package:project_tiket/account.dart';
import 'package:project_tiket/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_tiket/models/NowShowing.dart';
import 'package:project_tiket/models/carousel.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int _current = 0;

  List<T>? map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xfF1C1D27),
      appBar: AppBar(
        backgroundColor: Color(0xfF1C1D27),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => accountDetail()));
          },
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/man2.png',
            ),
            radius: 5,
          ),
        ),
        //title
        centerTitle: true,
        title: Text('Hello, Azriel!'),
        foregroundColor: Colors.white,
        //action search
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          //action notification
          IconButton(
            icon: new Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      //bottom navigation
      bottomNavigationBar: BottomNavigationGM(),


      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            //Location

            Padding(
              padding:
                  EdgeInsets.only(top: 15, left: 16, right: 16, bottom: 20),
              child: Text(
                'Jember, Jawa Timur',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            //Carrousel
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              height: 190,
              child: Swiper(
                onIndexChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                autoplay: true,
                layout: SwiperLayout.DEFAULT,
                itemCount: carousels.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(
                            carousels[index].image,
                          ),
                          fit: BoxFit.cover),
                    ),
                  );
                },
              ),
            ),
            //SEDANG TAYANG
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 5),
              child: Text(
                'Now Showing',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Container(
              height: 320,
              child: ListView.builder(
                  itemCount: showing.length,
                  padding: EdgeInsets.only(left: 0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 0),
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                height: 320,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage(showing[index].image),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                bottom: 8,
                                left: 8,
                                child: Text(
                                  showing[index].nama,
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 14),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
            //COMING SOON
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 5),
              child: Text(
                'Coming Soon',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              height: 320,
              child: ListView.builder(
                  itemCount: showing.length,
                  padding: EdgeInsets.only(left: 0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 0),
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                height: 320,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage(showing[index].image),
                                      fit: BoxFit.cover),
                                ),
                              ),                              
                              Positioned(
                                bottom: 8,
                                left: 8,
                                child: Text(
                                  showing[index].nama,
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 14),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
