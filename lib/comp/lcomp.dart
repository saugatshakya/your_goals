import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:yourgoals/data/goal.dart';

class Lcomp extends StatefulWidget {
  @override
  _LcompState createState() => _LcompState();
}

class _LcompState extends State<Lcomp> with SingleTickerProviderStateMixin{
  Future _openBox() async {
    await Hive.openBox('lcomp');
    return;
  }
  List<bool> state = [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true];

  
  @override
    Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
    FocusScope.of(context).requestFocus(new FocusNode());},
          child: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: LinearGradient(
                    colors: [Colors.purple,Colors.purple[900]],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
          child:
              FutureBuilder
              (future:_openBox(),
              builder: (BuildContext context,AsyncSnapshot snapshot){
                if (snapshot.connectionState == ConnectionState.done){
                  if(snapshot.hasError)
                  return Text(snapshot.error.toString());
                  else
                  return dailygoals(context);
                } else
                return Scaffold();
              })),
        ),
    );
  }


Widget dailygoals(context) {
  final goalBox = Hive.box('lcomp');
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: EdgeInsets.fromLTRB(0,38,0,0),child: IconButton(icon: Icon(Icons.home),iconSize:32, onPressed:(){Navigator.popAndPushNamed(context,'/life');})),
            Container(
              width: 312,
        decoration: BoxDecoration(color:Colors.black87,borderRadius:BorderRadius.only(bottomLeft:Radius.circular(20))),
        padding: EdgeInsets.fromLTRB(0,40,0,20),
        margin: EdgeInsets.fromLTRB(0,0,0,40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
                  children: [Container(
                width: 264,
                child: Column(
                children: [Text('Completed Goals',style: TextStyle(fontSize: 30,letterSpacing: 3,fontWeight: FontWeight.bold,color:Colors.white,fontFamily: 'Caveat')),
                Expanded(
                    child:ListView.builder(itemCount: goalBox.length,itemBuilder: (BuildContext context, int index){
                    final goal = goalBox.getAt(index) as Goal;        
                    return Container(
                        margin: EdgeInsets.fromLTRB(0,5,0,10),
                        decoration: BoxDecoration(color: Colors.white10,borderRadius:BorderRadius.only(topRight:Radius.circular(15),bottomRight:Radius.circular(15))),height:state[index]?65:110,
                        child:Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [IconButton(icon:state[index]? Icon(Icons.keyboard_arrow_down,color: Colors.white54):Icon(Icons.keyboard_arrow_up,color: Colors.white54), onPressed:(){setState(() {if(state[index]){state[index] = false;}else{state[index] = true;}});}),
                        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Padding(padding: const EdgeInsets.fromLTRB(0,20,0,10),
                        child: Text(goal.title,style:TextStyle(fontSize: 16,color: Colors.white60,letterSpacing: 2,fontWeight: FontWeight.w400)),),state[index]?SizedBox():Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:(Radius.circular(20)),topRight:(Radius.circular(20)),),color:Colors.black26,),width: 200,height:60,child: Center(child: Text(goal.desc,style:TextStyle(fontSize: 14,color: Colors.white60,letterSpacing: 2,))))]),
                        ])
                        );
}),
              ),
                ]),
                  ),
                Container(margin: EdgeInsets.fromLTRB(0,40,0,0),child: IconButton(icon: Icon(Icons.chevron_right),color: Colors.white38, onPressed:(){Navigator.pushNamed(context,'/laban');}))]),
      ),
          ]);}}