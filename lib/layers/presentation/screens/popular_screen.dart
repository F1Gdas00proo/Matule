import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import 'package:matule/layers/presentation/shared/ui/card_screen.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
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
                context.tr('popular_shoes'),
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Color.fromRGBO(43, 43, 43, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.heart, size: 20,),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(6),
              children: List.generate(16, (index) => CardScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
