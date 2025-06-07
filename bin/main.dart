import 'dart:io';

void main(){
  var input = stdin.readLineSync()!;
  //print(input);  // 101 2

  var data = input.split(" ");
  var productId = data [0];
  int quantity = int.parse(data [1]);


int price =0;
/*  if(productId == "101"){
    price= 10;
  }
  else if (productId == "202"){
    price =25;
  }
  else if (productId == "303"){
    price =5;
  } */

  switch (productId){
    case "101":
      price = 10;
      break;
    case "202":
      price = 25;
      break;
    case "303":
    price = 5;
    break;
  }

  int totalCost = price * quantity;
  print(totalCost);

}