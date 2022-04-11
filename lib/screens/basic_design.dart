

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
           const Image(image: AssetImage('assets/lanscape.jpg')),
           const TitleWidget(),
           const ButtonSection(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: const Text('Consectetur ad velit quis in fugiat ullamco excepteur veniam deserunt esse pariatur. Velit veniam quis cupidatat eu id irure ut. Do fugiat consectetur excepteur deserunt do consequat anim consectetur sint ullamco anim occaecat. Fugiat ea aliqua voluptate officia laboris id laboris aute anim. Excepteur dolor id elit mollit velit exercitation nulla nisi fugiat velit. Eiusmod mollit labore minim mollit in Lorem qui eiusmod sunt.')
          
          ),
        ],
      )
    );
  }
}


class TitleWidget extends StatelessWidget {

  const TitleWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:30, vertical: 30),
      child: Row (
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const[
               Text('Oeschinen Lake Campground',style: TextStyle(fontWeight: FontWeight.bold),),
               Text('Kandesteng Switzerland',style: TextStyle(color: Colors.black45),)
            ],
          ),
          Expanded(child: Container(color: Colors.red)),
          const Icon (Icons.star,color: Colors.red,),
          const Text('41'),
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({ Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [

            CustomButtom(icon:Icons.call,text: 'CALL',),
    
            SizedBox(width: 70),
    
            CustomButtom(icon:Icons.send,text: 'ROUTE',),

    
            SizedBox(width: 70),

            CustomButtom(icon:Icons.share,text: 'SHARE',),
        ],
       ),
    );
  }
}

class CustomButtom extends StatelessWidget {

  final IconData icon;
  final String text;
  const CustomButtom({Key? key, required this.icon, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children:[
        Icon (icon, color: Colors.blueAccent),
        const SizedBox(height: 10,),
        Text(text,style: const TextStyle(color: Colors.blueAccent),),
    ],);
  }
}