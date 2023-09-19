import 'package:flutter/material.dart';
import 'package:indian_cultures/home/home_item_model.dart';

Widget Homewidget(BuildContext context, Homedata data) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:Border.all(
            color: Color(0xFF4CBB17),
            width: 1,
          ),
          boxShadow:[
            BoxShadow(
              color: Color(0xC0B0C0B2),
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(4, 4)
            )
          ],
            color: Color(0xFFF0FFF1),
        ),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width*0.8,
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.01,
            horizontal: MediaQuery.of(context).size.height*0.01,
          ),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.25,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                ),
                child:  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      data.image,
                    ),
                  ),

              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.1,),
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          data.name,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        Spacer(),
                        Icon(
                          data.faviorate == false
                              ? Icons.favorite_outline
                              : Icons.favorite,
                          color: Colors.green,
                          size: 30,
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      data.detail,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

  );
}
