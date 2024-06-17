import 'package:flutter/material.dart';
import 'package:saving_app_pertemuan6_7_saving_app/styles/colors.dart';
import 'package:saving_app_pertemuan6_7_saving_app/styles/text_style.dart';

class PortofolioPage extends StatelessWidget {
  const PortofolioPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 25),
            height: 196,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
                ),
              image:DecorationImage(
                image: AssetImage('assets/images/bg-container2.png'),
                fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: kGrey,
                    blurRadius: 5,
                    offset: Offset.fromDirection(2),
                  ),
                ],
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Text(
                      'My Portfolio',
                      style: kHeading6.copyWith(
                        color: kWhite,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}