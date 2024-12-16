import 'package:abduqodir/intro_screens/intro_page_1.dart';
import 'package:abduqodir/intro_screens/intro_page_2.dart';
import 'package:abduqodir/intro_screens/intro_page_3.dart';
import 'package:abduqodir/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PageController _controller = PageController();

  //keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
        children:const [
          IntroPage1(),
          IntroPage2(),
          IntroPage3()
        ],
      ),
      Container(
        alignment: const Alignment(0,0.75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //skip
            GestureDetector(
              onTap: (){
                _controller.jumpToPage(2);
              },
              child: const Text('skip')
              ),

            // dot indicator
            SmoothPageIndicator(controller: _controller, count: 3),

             //next or done
            onLastPage ?
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const LoginPage();
                }));
              },
              child: const Text('done')
            ) : GestureDetector(
              onTap: (){
                _controller.nextPage(
                duration: const Duration(milliseconds: 500), 
                curve: Curves.easeIn);
              },
              child: const Text('next')
            ) ,
          ],
        ))
    ]
  )
);            
}
}