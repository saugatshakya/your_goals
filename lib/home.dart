import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:yourgoals/data/goal.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  Future _openBox() async {
    await Hive.openBox('goals');
    await Hive.openBox('daban');
    return;
  }
  List<bool> state = [true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true];
  void addgoal(Goal goal) {
    Hive.box('goals').add(goal);
  }
  void compgoal(Goal goal){
    Hive.box('dcomp').add(goal);
  }
  void abangoal(Goal goal){
    Hive.box('daban').add(goal);
  }
  final _formkey = GlobalKey<FormState>();
  String _title, _desc,_difficulty;
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  String temp = '';
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuscaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this ,duration: Duration(milliseconds:300));
    _scaleAnimation = Tween<double>(begin: 1,end: 0.6).animate(_controller);
    _menuscaleAnimation = Tween<double>(begin: 0.5,end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1,0),end: Offset(0,0)).animate(_controller);
    super.initState();
    
  }

  
  @override
    Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return GestureDetector(
      onTap: () {
    FocusScope.of(context).requestFocus(new FocusNode());},
          child: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: LinearGradient(
                    colors: [Colors.indigo[900],Colors.purple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
          child: Stack(
          children:[
              dashboard(context),
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
              })]),
        )),
    );
  }


Widget dashboard(context) {
  return SlideTransition(
    position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuscaleAnimation,
        child: Container(
        decoration: BoxDecoration(gradient: LinearGradient(
                    colors: [Colors.indigo[900],Colors.purple],
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                  )),
          child: Align(
            alignment: Alignment.topLeft,
            child:Column(children:[
              Container(
                margin:EdgeInsets.fromLTRB(0,0.075*screenHeight,30,0),
                child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.purple,
                    child: CircleAvatar(
                      radius:40,
                      backgroundImage: AssetImage('assets/profile.png'),
                    )
                  ),
              ),
              Container(margin:EdgeInsets.fromLTRB(0.13*screenWidth,5,0,5), child: Row(children: [Icon(Icons.person,color:Colors.white),SizedBox(width: 10),Text('Minusha Gurung',style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold))])),
             Container(
              width: 260,
              height: 0.437*screenHeight,
              margin:EdgeInsets.fromLTRB(0,5,10,6.5),
              decoration: BoxDecoration(color:Colors.black45,borderRadius:BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20))),
                  child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                SizedBox(height:10),
                FlatButton(onPressed:(){Navigator.pushNamed(context,'/home');} ,color:Colors.black45,child: Container(width: 230,padding:EdgeInsets.fromLTRB(20,5,0,5),child: Row(children: [Icon(Icons.playlist_add_check,color:Colors.white),SizedBox(width: 10),Text('Goals',style: TextStyle(color:Colors.white,fontSize: 18))]))),
                FlatButton(onPressed:(){Navigator.pushNamed(context,'/weekly');},child: Container(width: 230,padding:EdgeInsets.fromLTRB(30,5,0,5),child: Row(children: [Icon(Icons.playlist_add_check,color:Colors.white),SizedBox(width: 10),Text('Weekly Goals',style: TextStyle(color:Colors.white,fontSize: 18))]))),
                FlatButton(onPressed:(){Navigator.pushNamed(context,'/monthly');} ,child: Container(width: 230,padding:EdgeInsets.fromLTRB(30,5,0,5),child: Row(children: [Icon(Icons.playlist_add_check,color:Colors.white),SizedBox(width: 10),Text('Monthly Goals',style: TextStyle(color:Colors.white,fontSize: 18))]))),
                FlatButton(onPressed:(){Navigator.pushNamed(context,'/yearly');} ,child: Container(width: 230,padding:EdgeInsets.fromLTRB(30,5,0,5),child: Row(children: [Icon(Icons.playlist_add_check,color:Colors.white),SizedBox(width: 10),Text('Yearly Goals',style: TextStyle(color:Colors.white,fontSize: 18))]))),
                FlatButton(onPressed:(){Navigator.pushNamed(context,'/life');} ,child: Container(width: 230,padding:EdgeInsets.fromLTRB(30,5,0,5),child: Row(children: [Icon(Icons.playlist_add_check,color:Colors.white),SizedBox(width: 10),Text('Life Goals',style: TextStyle(color:Colors.white,fontSize: 18))]))),
          ],),
            ),
            Container(
              decoration: BoxDecoration(color:Colors.black45,borderRadius:BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20))),
              height:30,
              width:260,
              child: Container(child:FlatButton.icon(icon:Icon(Icons.star_border,size: 0.028*screenHeight,color:Colors.white),onPressed: (){Navigator.pushNamed(context,'/achieve');},label:Text('Achievement',style: TextStyle(fontSize:0.024*screenHeight,color: Colors.white)))),
            ),
            ]),
    ),
      ),
  ));
}

Widget dailygoals(context) {
  final goalBox = Hive.box('goals');
  final compBox = Hive.box('dcomp');
  final abanBox = Hive.box('daban');
    return 
      AnimatedPositioned(
        duration: Duration(milliseconds:300),
        top: 0,
        bottom: 0,
        left:  isCollapsed?0:0.6*screenWidth,
        right:  isCollapsed?0:-0.4*screenWidth,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Material(
            elevation: 90,
            child:Scaffold
            (backgroundColor: Colors.purple[600],
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              floatingActionButton:FloatingActionButton(backgroundColor: Colors.black87,child:Icon(Icons.add),onPressed: (){ showDialog(context:context,builder: (BuildContext context){return AlertDialog(contentPadding: EdgeInsets.all(0),elevation: 20,backgroundColor: Colors.transparent,content: Container(padding:EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.white70,borderRadius:BorderRadius.circular(30)),height:230,width:180,child: Form(key:_formkey,
              child: Column(
              children: <Widget>
                [SizedBox(height: 10),
                Text('Add Goals',style: TextStyle(fontSize: 25,letterSpacing: 3,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Hearts'),),
                SizedBox(height: 10),
                Container(height:45,width:200,child: TextFormField(maxLength: 20,textCapitalization: TextCapitalization.words,onSaved:(value)=>_title = value,decoration: InputDecoration(counterText: '',labelText:'Your Goal Here',border: OutlineInputBorder()))),
                SizedBox(height: 10),
                Container(height:45,width:200,child: TextFormField(maxLength: 150,textCapitalization: TextCapitalization.words,onSaved:(value)=>_desc = value,decoration: InputDecoration(counterText: '',labelText:'Describe your Goal',border: OutlineInputBorder()))),
                SizedBox(height: 10),
                RaisedButton(color:Colors.black,child:Text('ADD',style:TextStyle(color:Colors.white)),onPressed: (){_formkey.currentState.save();final newGoal = Goal(_title, _desc,_difficulty); addgoal(newGoal);Navigator.pop(context);
                },)
              ],
                  ),
                )));});}),
            bottomNavigationBar: BottomAppBar(shape: CircularNotchedRectangle(),color: Colors.black87,child: Container(padding:EdgeInsets.fromLTRB(20,0,20,0) ,height: 50,child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[GestureDetector(onTap: (){Navigator.pushNamed(context, '/dcomp');},child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Text('Completed Goals',style: TextStyle(color:Colors.white,fontSize:14),),Text(compBox.length.toString(),style: TextStyle(color:Colors.white,fontSize:14))])),GestureDetector(onTap: (){Navigator.pushNamed(context,'/daban');},child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Text('Abandoned Goals',style: TextStyle(color:Colors.white,fontSize:14)),Text(abanBox.length.toString(),style: TextStyle(color:Colors.white,fontSize:14))]))],)),notchMargin:4,),
              body: SizedBox(
                child:Container(
                  decoration: BoxDecoration(gradient: LinearGradient(
                    colors: [Colors.indigo[900],Colors.purple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
                  child: Column(
                    children: <Widget>[
                      Container(margin:EdgeInsets.fromLTRB(0, 30, 0, 0),child: Row(children: [SizedBox(width: 5),InkWell(child:Icon(Icons.menu,color: Colors.lightBlue[200],size: 30),onTap:() { 
                        setState(() 
                        {
                        FocusScope.of(context).requestFocus(new FocusNode());
                        if(isCollapsed)
                          _controller.forward();
                        else 
                          _controller.reverse(); 
                        isCollapsed = !isCollapsed;});}),
                        SizedBox(width: 120),Text('Goals',style: TextStyle(shadows: [Shadow(blurRadius: 25.0,color: Colors.blue[800],offset: Offset(12.0, 12.0),),] , fontSize: 40,letterSpacing: 3,fontWeight: FontWeight.bold,color:Colors.white,fontFamily: 'Caveat'))])),
                      

                      Expanded(
                        child: Row(
                            children: [
                            Container(
                            width: 45,
                            margin:EdgeInsets.fromLTRB(0,20,10,10),
                            decoration: BoxDecoration(color:Colors.black45,borderRadius:BorderRadius.only(topRight:Radius.circular(20),bottomRight:Radius.circular(20))),
                            child:Column(
                            children:[
                            SizedBox(height:13),
                            compBox.length>=1?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.green,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('I Have Started',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.seedling,color: Colors.green)):SizedBox(),
                            SizedBox(height:12),
                            compBox.length>=10?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.red,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('A Goal A Day Makes A Difference',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.appleAlt,color:Colors.red)):SizedBox(),
                            SizedBox(height:12),
                            compBox.length>=20?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.orange,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('Moving Up Slowly',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.carrot,color:Colors.orange)):SizedBox(),
                            SizedBox(height:12),
                            compBox.length>=50?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.lime,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('When Life Gives You Lemons',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.solidLemon,color:Colors.lime)):SizedBox(),
                            SizedBox(height:12),
                            compBox.length>=100?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.red,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('I\'M ON FIRE',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.pepperHot,color:Colors.red)):SizedBox(),
                            SizedBox(height:12),
                            compBox.length>=250?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.red,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('THANK YOU',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.solidHeart,color:Colors.red)):SizedBox(),
                            SizedBox(height:12),
                            compBox.length>=500?IconButton(onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(elevation:10,backgroundColor:Colors.transparent,content: Container(height:80,decoration:BoxDecoration(color:Colors.yellow,borderRadius:BorderRadius.circular(20)),child:Center(child: Text('YOU\'RE A STAR',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,fontFamily:'Caveat'),)),));});},icon:FaIcon(FontAwesomeIcons.solidStar,color:Colors.yellow)):SizedBox(),
                            ])
                            ),
                            Container(
                            width: 300,
                            margin: EdgeInsets.fromLTRB(5,20,0,10),
                            decoration: BoxDecoration(color:Colors.black45,borderRadius:BorderRadius.only(topLeft:Radius.circular(20),bottomLeft:Radius.circular(20))),
                            child: ListView.builder(itemCount: goalBox.length,itemBuilder: (BuildContext context, int index){
                            final goal = goalBox.getAt(index) as Goal;        
                            return 
                            Container(
                            margin: EdgeInsets.fromLTRB(15,5,0,10),
                            decoration: BoxDecoration(color: Colors.black26,borderRadius:BorderRadius.only(topLeft:Radius.circular(15),bottomLeft:Radius.circular(15))),height:state[index]?65:110,
                              child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [IconButton(icon:state[index]? Icon(Icons.keyboard_arrow_down,color: Colors.white54):Icon(Icons.keyboard_arrow_up,color: Colors.white54), onPressed:(){setState(() {if(state[index]){state[index] = false;}else{state[index] = true;}});}),
                              Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Padding(
                                padding: const EdgeInsets.fromLTRB(0,20,0,10),
                                child: Text(goal.title,style:TextStyle(fontSize: 16,color: Colors.white60,letterSpacing: 2,fontWeight: FontWeight.w400)),
                              ),state[index]?SizedBox():Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:(Radius.circular(20)),topRight:(Radius.circular(20)),),color:Colors.black26,),width: 185,height:60,child: Center(child: Text(goal.desc,style:TextStyle(fontSize: 14,color: Colors.white60,letterSpacing: 2,))))])),
                              IconButton(icon: Icon(Icons.dns,color: Colors.white54,size: 20), onPressed:(){showDialog(context:context,builder:(BuildContext context){return AlertDialog(backgroundColor:Colors.transparent, contentPadding: EdgeInsets.all(0),content: Container(decoration:BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(10)),height:65,margin: EdgeInsets.only(top:5,bottom:5),
                                child: (Row (mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[RaisedButton(color: Colors.indigo[900] ,onPressed:(){setState((){compgoal(goal);goalBox.deleteAt(index);Navigator.pop(context);
                                compBox.length==1?showDialog(context:context,builder:(BuildContext context){return AlertDialog(content: SizedBox(height:50,child: Center(child: Text('You have a new achievement'))));}):SizedBox();
                                compBox.length==10?showDialog(context:context,builder:(BuildContext context){return AlertDialog(content: SizedBox(height:50,child: Center(child: Text('You have a new achievement'))));}):SizedBox();
                                compBox.length==20?showDialog(context:context,builder:(BuildContext context){return AlertDialog(content: SizedBox(height:50,child: Center(child: Text('You have a new achievement'))));}):SizedBox();
                                compBox.length==50?showDialog(context:context,builder:(BuildContext context){return AlertDialog(content: SizedBox(height:50,child: Center(child: Text('You have a new achievement'))));}):SizedBox();
                                compBox.length==100?showDialog(context:context,builder:(BuildContext context){return AlertDialog(content: SizedBox(height:50,child: Center(child: Text('You have a new achievement'))));}):SizedBox();
                                compBox.length==250?showDialog(context:context,builder:(BuildContext context){return AlertDialog(content: SizedBox(height:50,child: Center(child: Text('You have a new achievement'))));}):SizedBox();
                                compBox.length==500?showDialog(context:context,builder:(BuildContext context){return AlertDialog(content: SizedBox(height:50,child: Center(child: Text('You have a new achievement'))));}):SizedBox();
                                });},child:Text('Completed',style:TextStyle(color:Colors.white))),
                                IconButton(icon:Icon(Icons.delete,size:35,color:Colors.indigo[700]),onPressed: (){goalBox.deleteAt(index);Navigator.pop(context);}),
                                RaisedButton(color:Colors.purple[900],onPressed:(){setState((){abangoal(goal);goalBox.deleteAt(index);Navigator.pop(context);});}, child:Text('Abandoned',style: TextStyle(color:Colors.white),))])),
                              ));});}),
                                      ])
                                  );
                                },
                              ),
                          ),
                            ]),
                        ),

                    ],
                  ),
                )
              ),
            ),
        ),
          ),
      );
}
}