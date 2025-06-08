import 'dart:io';
import 'dart:math';

void main(){

// wheel =43/4, bodies =15/1, Figure= 87/2
  var input = stdin.readLineSync()!;
 // print(input);

  var data = input.split(" ");
//  print(data);

  int wheel = int.parse(data[0]);
  int bodies = int.parse(data[1]) ;
  int figure = int.parse(data[2]);
/*
  print(wheel);
  print(bodies);
  print(figure);*/

  int wheelLimit = wheel~/4;  // ~ এই চিহ্ন ডার্ট এর ফ্লটিং পয়েন্ট নিরদেশ করে
  int bodiesLimit = bodies~/1;
  int figuresLimit = figure~/2;

/*  print(wheelLimit);
  print(bodiesLimit);
  print(figuresLimit);*/

  int carpossible = [wheelLimit, bodiesLimit, figuresLimit].reduce(min);
  print("carpossible: $carpossible");



}