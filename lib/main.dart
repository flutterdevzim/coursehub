import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(

          slivers: [
            SliverAppBar(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                )
              ),
//              forceElevated: true,
              floating: true,
              pinned: false,
              elevation: 10,
              expandedHeight: MediaQuery.of(context).size.height/3,

//              floating: true,
//              elevation: 10,
              title: Text('Explore'),
              leading: Padding(
                child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text('CH',style: TextStyle(
                        color: Colors.white
                    ),)
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10
                ),
              ),
              backgroundColor: Colors.white,

              actions: [
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  onPressed: (){

                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.alarm,
                    color: Colors.black,
                  ),
                  onPressed: (){

                  },
                )
              ],
              flexibleSpace: Stack(children: [
                Positioned.fill(
                    child: Image.network(
                      "https://coursehub.co.zw/assets/img/illustrations/characters/friends.png",
                      fit: BoxFit.cover,
                    )),
//                Container(
//                  decoration: BoxDecoration(
//                    gradient: LinearGradient(
//                      colors: [
//                        Colors.blue,
//                        Colors.purple
//                      ]
//                    )
//                  ),
//
//                ),
                FlexibleSpaceBar(
                  centerTitle:true,
                  background: Stack(
                    children: [

                    ],
                  ),
                  title:  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          children: [
                            TextSpan(text : 'Course', style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                            )),
                            TextSpan(text: 'hub',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600
                                )
                            )
                          ]
                      )),
                ),



                ],),
            ),
            SliverPadding(
              sliver: SliverAppBar(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  backgroundColor: Colors.white,
                  pinned: true,
                  leading: Icon(Icons.list, color: Colors.blue,),
                  actions: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.blueAccent,
                                  Colors.purple
                                ]
                            )
                        ),
//                          color: Colors.purpleAccent,
                        child: Icon(Icons.search, color: Colors.white,),
                      ),
                    ),

                  ],
                  title: Padding(
                    padding: EdgeInsets.all(1), // remove
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.blueAccent,
                          hintText: 'Search Courses',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                          ),

                        ),
                      ),
                    ),
                  )
              ),
              padding: EdgeInsets.all(20),
            )
            ,

            SliverToBoxAdapter(

              child: Container(
                height: MediaQuery.of(context).size.height/3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                    height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20
                      ),
                      child: Text(
                        'Top Developers',
//                      textAlign: TextAlign.left,
                        style: TextStyle(

                        ),
                      ),
                    ),
                    Expanded(
                        child: ListView.separated(
                      separatorBuilder: (context, index)=>SizedBox(
                        width: 10,
                      ),
                      itemCount: 100,
                      padding: EdgeInsets.all(10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: index%2==0?Colors.blueAccent:Colors.deepOrange,
                            ),
                            width: 100.0,
                            height: 50,

                          );
                        }
                    )),

                  ],
                )
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index){

                    return Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: index%2==0?Colors.deepOrange:Colors.blue,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        height: 100,
                        width: 100,

                      ),
                    );
                  },

              ),
            )

          ],
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }
}
