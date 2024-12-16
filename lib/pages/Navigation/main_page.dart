import 'package:abduqodir/components/circle.dart';
import 'package:abduqodir/components/squeare.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3', 
    'post 4', 
    'post 5',
    ];

  final List _stories = ['story 1',
    'story 2',
    'story 3',
    'story 4', 
    'story 5',
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // instagram stories
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
              return MyCircle(
                child: _stories[index],
              );
            }),
          ),

          // instagram posts
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MySquare(
                  child: _posts[index],
                  );
            }),
          ),
        ],
      )
      );
  }
}