import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import 'package:matule/layers/presentation/shared/ui/card_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class OutdoorScreen extends StatefulWidget {
  const OutdoorScreen({super.key});

  @override
  State<OutdoorScreen> createState() => _OutdoorScreenState();
}

class _OutdoorScreenState extends State<OutdoorScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(247, 247, 249, 1),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      ),
                  icon: Icon(CupertinoIcons.back, size: 20,),
                ),
              ),
              Text(
                'OutDoor',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Color.fromRGBO(43, 43, 43, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 40),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    context.tr('see_all'),
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: Color.fromRGBO(43, 43, 43, 1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(72, 178, 231, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OutdoorScreen(),
                          ),
                        ),
                    child: Text(
                      'Outdoor',
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 150,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Tennis',
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: Color.fromRGBO(43, 43, 43, 1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(8),
              children: List.generate(16, (index) => CardScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
