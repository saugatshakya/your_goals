import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';

class Achieve extends StatefulWidget {
  @override
  _AchieveState createState() => _AchieveState();
}

class _AchieveState extends State<Achieve> {

  @override
  Widget build(BuildContext context) {  
    final dComp = Hive.box('dcomp');
    final wComp = Hive.box('wcomp');
    final mComp = Hive.box('mcomp');
    final yComp = Hive.box('ycomp');
    final lComp = Hive.box('lcomp');
    return Material(
    child: Container(
    decoration: BoxDecoration(gradient: LinearGradient(
                    colors: [Colors.indigo[900],Colors.indigo,Colors.orange],
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                  )),  
    height: 800,
    width: 800,
    child:Column(children: <Widget>[
      Container(margin: EdgeInsets.fromLTRB(10,15,10,0),child: IconButton(icon:Icon(Icons.home,size: 35,color:Colors.white70), onPressed:(){Navigator.pop(context);})),
      Container(
        height: 75,
        margin: EdgeInsets.fromLTRB(10,5,10,10),
        padding: EdgeInsets.fromLTRB(0,10,0,0),
        decoration: BoxDecoration(color:Colors.white12,borderRadius:BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20),topRight:Radius.circular(20),bottomRight: Radius.circular(20))),
        child: Column(
          children:[
        Text('Daily Goals',style: TextStyle(color:Colors.white70),),
        Row(
          children:[
                            dComp.length>=1?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.green,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('I Have Started',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.seedling,color: Colors.green)):SizedBox(),
                            dComp.length>=10?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.red,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('A Goal A Day Makes A Difference',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.appleAlt,color:Colors.red)):SizedBox(),
                            dComp.length>=20?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.orange,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Moving Up Slowly',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.carrot,color:Colors.orange)):SizedBox(),
                            dComp.length>=50?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.lime,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('When Life Gives You Lemons',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.solidLemon,color:Colors.lime)):SizedBox(),
                            dComp.length>=100?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.red,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('I\'M ON FIRE',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.pepperHot,color:Colors.red)):SizedBox(),
                            dComp.length>=250?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.red,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('THANK YOU',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.solidHeart,color:Colors.red)):SizedBox(),
                            dComp.length>=500?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.yellow,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('YOU\'RE A STAR',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.solidStar,color:Colors.yellow)):SizedBox(),
          ]
        )]),
      ),
      Container(
        height: 75,
        margin: EdgeInsets.fromLTRB(10,15,10,10),
        padding: EdgeInsets.fromLTRB(0,10,0,0),
        decoration: BoxDecoration(color:Colors.white12,borderRadius:BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20),topRight:Radius.circular(20),bottomRight: Radius.circular(20))),
        child: Column(
          children:[
        Text('Weekly Goals',style: TextStyle(color:Colors.white70),),
        Row(
          children:[
                            wComp.length>=1?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('First Of Many',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.egg,color: Colors.white)):SizedBox(),
                            wComp.length>=10?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.yellow,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Getting Hang Of It',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.cheese,color:Colors.yellow)):SizedBox(),
                            wComp.length>=20?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.orange,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Not Giving Up Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.cookie,color:Colors.orange)):SizedBox(),
                            wComp.length>=50?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.red[900],borderRadius:BorderRadius.circular(20)),child:Center(child: Text('I am an Achiever',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.bacon,color:Colors.red[900])):SizedBox(),
                            wComp.length>=100?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.orange,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Knight of Weekly Goals',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.hotdog,color:Colors.orange)):SizedBox(),
                            wComp.length>=200?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.grey[200],borderRadius:BorderRadius.circular(20)),child:Center(child: Text('This Did\'t Take Too Long',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.hamburger,color:Colors.grey[200])):SizedBox(),
                            wComp.length>=500?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.yellow,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Let\'s Go',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.pizzaSlice,color:Colors.yellow)):SizedBox(),
          ]
        ),]),
      ),
      Container(
        height: 75,
        margin: EdgeInsets.fromLTRB(10,15,10,10),
        padding: EdgeInsets.fromLTRB(0,10,0,0),
        decoration: BoxDecoration(color:Colors.white12,borderRadius:BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20),topRight:Radius.circular(20),bottomRight: Radius.circular(20))),
        child: Column(
          children:[
        Text('Monthly Goals',style: TextStyle(color:Colors.white70),),
        Row(
          children:[
                            mComp.length>=1?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.brown,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('It\'s Happening',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.solidDotCircle,color: Colors.brown)):SizedBox(),
                            mComp.length>=5?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.cyan,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Don\'t Forget To Celebrate',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.bahai,color:Colors.cyan)):SizedBox(),
                            mComp.length>=10?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.purple,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Another One Down',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.firstOrderAlt,color:Colors.purple)):SizedBox(),
                            mComp.length>=20?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.grey[200],borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Never Stopping',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.firstOrder,color:Colors.grey[200])):SizedBox(),
                            mComp.length>=50?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.red[900],borderRadius:BorderRadius.circular(20)),child:Center(child: Text('I Can Do A lot More',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.centercode,color:Colors.red[900])):SizedBox(),
                            mComp.length>=100?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.grey[100],borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Bring It On',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.lifeRing,color:Colors.grey[100])):SizedBox(),
                            mComp.length>=200?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.yellow,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('View From The Top is Amazing',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.crown,color:Colors.yellow)):SizedBox(),
          ]
        ),]),
      ),
      Container(
        height: 75,
        margin: EdgeInsets.fromLTRB(10,15,10,10),
        padding: EdgeInsets.fromLTRB(0,10,0,0),
        decoration: BoxDecoration(color:Colors.white12,borderRadius:BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20),topRight:Radius.circular(20),bottomRight: Radius.circular(20))),
        child: Column(
        children:[
        Text('Yearly Goals',style: TextStyle(color:Colors.white70),),
        Row(
          children:[
                            yComp.length>=1?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.red,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Something Big',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.meteor,color: Colors.red)):SizedBox(),
                            yComp.length>=5?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Inner Peace',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.yinYang,color:Colors.white)):SizedBox(),
                            yComp.length>=10?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.orange,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Finally A Real Badge',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.award,color:Colors.orange)):SizedBox(),
                            yComp.length>=15?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.yellow,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('I Got A Medal',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.medal,color:Colors.yellow)):SizedBox(),
                            yComp.length>=20?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.black,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Something Great',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat',color:Colors.white),)),));});},icon:FaIcon(FontAwesomeIcons.jedi,color:Colors.black)):SizedBox(),
                            yComp.length>=25?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.grey[300],borderRadius:BorderRadius.circular(20)),child:Center(child: Text('UNSTOPABBLE',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.jediOrder,color:Colors.grey[300])):SizedBox(),
                            yComp.length>=30?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.yellow,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('GOD LIKE',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.galacticRepublic,color:Colors.yellow)):SizedBox(),
          ]
        )]),
      ),
      Container(
        height: 75,
        margin: EdgeInsets.fromLTRB(10,15,10,10),
        padding: EdgeInsets.fromLTRB(0,10,0,0),
        decoration: BoxDecoration(color:Colors.white12,borderRadius:BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20),topRight:Radius.circular(20),bottomRight: Radius.circular(20))),
        child: Column(children: <Widget>[
        Text('Life Goals',style: TextStyle(color:Colors.white70),),
        Row(
          children:[
                            lComp.length>=1?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.yellow,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Taking On The Big Steps',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.bolt,color: Colors.yellow)):SizedBox(),
                            lComp.length>=5?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.lightBlue,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Let\'s Fly High',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.solidPaperPlane,color:Colors.lightBlue)):SizedBox(),
                            lComp.length>=10?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.red,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Breaking All Limits',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.fistRaised,color:Colors.red)):SizedBox(),
                            lComp.length>=20?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.blueGrey,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Nothing is Impossible',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.dumbbell,color:Colors.blueGrey)):SizedBox(),
                            lComp.length>=40?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.blue,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('I Am Awesome',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.thumbsUp,color:Colors.blue)):SizedBox(),
                            lComp.length>=80?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.grey[200],borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Aiming For The Moon',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.spaceShuttle,color:Colors.grey[200])):SizedBox(),
                            lComp.length>=160?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.yellow,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('The Queen of Yearly Goals',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.userAstronaut,color:Colors.yellow)):SizedBox(),
          ]
        )]),
      )
    ],)      
        ),
      );
  }
}