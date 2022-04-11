import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors:[
              Color(0xff5EE8C5),
              Color(0xff30BAD6),
            ] )
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const[
            Page1(),
            Page2()
            
            
          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:const [
        Background(),
        DataScroll(),
        
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6) ,
        child: Center(
          child: TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: const StadiumBorder()
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 2),
              child: const Text('Bienvenido',style: TextStyle(color: Colors.white,fontSize: 15),)),
          ),
        ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
     // height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}

class DataScroll extends StatelessWidget {
  const DataScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white, fontSize: 60,fontWeight: FontWeight.bold);
    return SafeArea(
      bottom: false,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              const Text('11°', style: textStyle,),
              const SizedBox(height: 10,),
             const Text('Miercoles',style:textStyle),
             Expanded(child: Container()),
             const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
          ],
      ),
    );
  }
}
