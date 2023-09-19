import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shadowColor: Theme.of(context).primaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Shubham Maurya',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/images/welcome_festival.jpg') ,
            ),
            decoration: BoxDecoration(
                color: Colors.white
            ), accountEmail: null,
          ),
          ListTile(
            leading: Icon(Icons.home,color:Colors.black ),
            title: Text('Home',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
            onTap: (){

            },
          ),
          ListTile(
            leading:Icon(Icons.person,color: Colors.black,),
            title: Text('Account',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(Icons.favorite,color:Colors.black ),
            title: Text('Favorite',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
            onTap: (){

            },
          ),
          ListTile(
            leading:Icon(Icons.phone,color:Colors.black),
            title: Text('Contact Us',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
            onTap: (){

            },
          ),
        ],
      ),
    );
  }
}