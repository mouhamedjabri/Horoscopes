import 'package:flutter/material.dart';

import '../../const/const.dart';


class HoroscopItem extends StatelessWidget {
   HoroscopItem({Key? key,required this.imagePath,required this.titel,required this.time}) : super(key: key);
  String imagePath,titel,time;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.white,
          width: 2
        )
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Row(
        children: [
          Image.asset(imagePath,width: MediaQuery.of(context).size.width*0.3,height: MediaQuery.of(context).size.height*0.12,color: Colors.white,),
          SizedBox(width: MediaQuery.of(context).size.width*0.1,),
          Column(
            children: [
              Text(titel,style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
              ),),
              Text(time,style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),),
            ],
          )
        ],
      ),
    );
  }
}
