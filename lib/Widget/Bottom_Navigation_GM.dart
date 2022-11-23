import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationGM extends StatefulWidget {
  const BottomNavigationGM({super.key});

  @override
  State<BottomNavigationGM> createState() => _BottomNavigationGMState();
}

class _BottomNavigationGMState extends State<BottomNavigationGM> {
  int _selectedIndex=0;

  var bottomTextStyle = GoogleFonts.inter(
    fontSize: 12, fontWeight: FontWeight.w500
  );

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Color(0xfF1C1D27),
        boxShadow: [
          BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 15,
        offset: Offset(0, 5))
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
                  ? new Icon(Icons.home, color: Colors.white)
                  : new Icon(Icons.home_outlined, color: Colors.white),
                  label: (
                    'Home'),
                    
          ),
          BottomNavigationBarItem(
          icon: _selectedIndex == 1
                  ? new Icon(Icons.movie, color: Colors.white)
                  : new Icon(Icons.movie_outlined, color: Colors.white),
                  label: (
                    'ticket'),
          ),
          BottomNavigationBarItem(
          icon: _selectedIndex == 2
                  ? new Icon(Icons.villa, color: Colors.white)
                  : new Icon(Icons.villa_outlined, color: Colors.white),
                  label: (
                    'bioskop'),
          ),
      ],
      
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      onTap: _onItemTapped,
      backgroundColor: Color(0xfF1C1D27),
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      showUnselectedLabels: true,
      elevation:0,
      ),
    );
  }
}

