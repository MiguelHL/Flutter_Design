import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children:[
            _SingleCard(color: Colors.blue,icon: Icons.border_all,title: 'General',),
            _SingleCard(color: Colors.pinkAccent,icon: Icons.car_rental,title: 'Transport',),

          ] 
        ),
        TableRow(
          children:[
            _SingleCard(color: Colors.purple,icon: Icons.shop,title: 'Shopping',),
            _SingleCard(color: Colors.purpleAccent,icon: Icons.cloud,title: 'Bill',), 
          ] 
        ),

         TableRow(
          children:[
            _SingleCard(color: Colors.lightBlue,icon: Icons.movie,title: 'Entertaiment',),
            _SingleCard(color: Colors.green,icon: Icons.local_grocery_store,title: 'Grocery',), 
          ] 
        ),
        
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String title;

  const _SingleCard({ Key? key, required this.icon, required this.color, required this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child:  Icon(icon,size: 35,color: Colors.white,),
                  radius: 30,
                ),
                const SizedBox(height: 15,),
                Text(title,style: const TextStyle(color:Colors.blue,fontSize: 18),)
              ],
              );
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;
  const _CardBackground({ Key? key, required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
          child: Container(
            //margin:  const EdgeInsets.all(15),
            height: 180,
            decoration:  BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}