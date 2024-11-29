 import 'dart:io';
 void main(){
  
  print("Enter Your Wight");
  String Wight=stdin.readLineSync()!;//My wight
  double W=double.parse(Wight);//convert to double
  print("Enter Your Hight");
  String Hight=stdin.readLineSync()!;//My hight
  double H=double.parse(Hight);//convert to double
  double MBI=W/(H*H);
  print('MBI=$MBI');
  
  

}