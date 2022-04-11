import 'package:design/screens/scroll_design.dart';
import 'package:design/widgets/background.dart';
import 'package:design/widgets/card_table.dart';
import 'package:design/widgets/custom_bottom_navigation.dart';
import 'package:design/widgets/page_titles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           const BackgroundWidget(),
           _Homebody(),
        
        ]
      ),
      bottomNavigationBar:const CustomNavigation() ,
    );
  }
}

class _Homebody extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          ////titles
          PageTitle(),

          ///Cards
          CardTable(),
        ],
      ),
    );
  }
}