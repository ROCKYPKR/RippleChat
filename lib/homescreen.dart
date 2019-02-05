import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey[800],
          foregroundColor: Colors.white,
          onPressed: () => null,
          child: Icon(Icons.contacts),
        ),
      appBar: AppBar(
              title: Text("RippleChat",style: TextStyle(fontSize: 25.0),),
              leading: null,
              elevation: 0.0,
              backgroundColor: Colors.grey[800],
              actions: <Widget>[
                Icon(Icons.search),
                Padding(
                  padding: const EdgeInsets.only(right:16.0),
                  child: Icon(Icons.more_vert),
                )
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: "Chats"),
                  Tab(text: "Profile")
                ],
              ),
          ),

          body: TabBarView(
            children: <Widget>[
              chats("SLIM"),
              profile("SLIM")
            ],
          ),
      ),
    );
  }

  Widget chats(String inputName){
    return ListView(
      children: <Widget>[
        chatDisplayContainer(inputName),

        Padding(
          padding: const EdgeInsets.only(left:30.0,right:30.0),
          child: Divider(
            height: 5.0,
            color: Colors.grey,
          ),
        )
      ],
    );
  }


  Widget chatDisplayContainer(String inputName){
    return InkWell(
          splashColor: Colors.lightBlueAccent,
          highlightColor: Colors.cyanAccent[700],
          onTap: () => null,
          child: Padding(
            padding: const EdgeInsets.only(left:8.0,right: 16.0),
            child: Container(
              height: 80.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(inputName,style:TextStyle(color:Colors.black,fontSize:20.0)),
                          Text("My name is slim shady ...",style:TextStyle(color:Colors.grey,fontSize:14.0))
                        ],
                  ),
                    ],
                  ),

                Text("5:30 PM")
                ],
              ),
            ),
          ),
        );
  }


  Widget profile(String inputName){
    return ListView(
      children: <Widget>[
        InkWell(
          splashColor: Colors.cyanAccent,
          highlightColor: Colors.cyanAccent,
          onTap: () => null,
          child: Container(
            height: 80.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[800],
                    ),
                    child: Center(
                      child: Icon(Icons.account_circle,color: Colors.white,size: 40.0,),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(inputName,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500)),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 10.0,
                              width: 10.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Text("Online."),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ), 
        ),

        Padding(
          padding: const EdgeInsets.only(left:8.0,right: 8.0),
          child: Divider(
            height: 5.0,
            color: Colors.grey,
          ),
        ),

        settingsWidget(Icon(Icons.vpn_key), "Account"),
        settingsWidget(Icon(Icons.people), "Invite a friend"),
        settingsWidget(Icon(Icons.help), "Help"),
        settingsWidget(Icon(Icons.exit_to_app), "Sign Out")
      ],
    );
  }

  Widget settingsWidget(Icon inputIcon,String inputString){
    return InkWell(
      splashColor: Colors.cyanAccent,
      highlightColor: Colors.cyanAccent,
      onTap: () => null,
        child: Container(
        height: 80.0,
        child: Padding(
          padding: const EdgeInsets.only(left:16.0,right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  inputIcon,
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(inputString),
                  )
                ],
              ),

              Text(">", style: TextStyle(fontSize: 20.0),)
            ],
          ),
        ),
      ),
    );
  }
}