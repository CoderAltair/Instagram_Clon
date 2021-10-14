import 'package:flutter/material.dart';
import 'package:instagram/comment_screen.dart';
import 'package:instagram/modullar.dart';
class Instagram extends StatefulWidget {
  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  Widget _buildPost(int index){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      child: Container(
        width: double.infinity,
        height: 480.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0)
        ),
        child: Column(
          children:<Widget> [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading:Container(
                      height: 60.0,
                      width: 60.0,
                      //margin: EdgeInsets.all(10.0),
                      decoration:BoxDecoration(
                          shape:BoxShape.circle,
                          boxShadow:[ BoxShadow(
                            blurRadius: 6.0,
                            color: Colors.black45,
                            offset: Offset(0,2),
                          )]
                      ),
                      child: CircleAvatar(

                        child: ClipOval(
                          child: Image(
                            width: 60.0,
                            height: 60.0,
                            image: AssetImage(posts[index].authorImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title:Text(posts[index].authorName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    subtitle:Text(posts[index].timeAgo),
                    trailing: IconButton(
                        icon: Icon(Icons.more_horiz),
                        color: Colors.black,
                        onPressed: (){}),
                  ),
                  InkWell(
                    onDoubleTap: (){print('like post');},
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Comments(
                              post: posts[index],
                            ),
                          )); },

                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 300,
                      decoration:BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(0,5),
                              blurRadius: 8.0,
                            )
                          ],
                          image:DecorationImage(
                            image: AssetImage(posts[index].imageUrl),
                            fit:BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Row(
                                children:<Widget> [
                                  IconButton(
                                      icon: Icon(Icons.favorite_border),
                                      iconSize: 30.0,
                                      onPressed:()=>print('like')),
                                  Text('2,527'),
                                ],
                              ),
                              SizedBox(width: 10.0),
                              Row(
                                children:<Widget> [
                                  IconButton(
                                      icon: Icon(Icons.chat),
                                      iconSize: 30.0,
                                      onPressed:(){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Comments(
                                                post: posts[index],
                                              ),
                                            ));  }

                                  ),
                                  Text('350'),
                                ],
                              ),
                              SizedBox(width: 80.0,),
                              IconButton(
                                  icon: Icon(Icons.bookmark_border),
                                  iconSize: 30.0,
                                  onPressed:()=>print('like'))
                            ],
                          ),
                        ]
                    ),
                  ),
                ],
              ),)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0f6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Text('Instagram',
                  style: TextStyle(
                    fontFamily: 'Billabong',
                    fontSize: 32.0,
                  ),),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.live_tv,),
                      iconSize: 30.0,
                      onPressed:() => print('IGTV'),
                    ),
                    SizedBox(width: 16.0,),
                    Container(
                      width: 40.0,
                      child: IconButton(
                        icon: Icon(
                          Icons.send,),
                        iconSize: 30.0,
                        onPressed:() => print('Direct Massage'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
           child: ListView.builder(
            scrollDirection: Axis.horizontal,
             itemCount:stories.length,
             itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 65.0,
                height: 65.0,
                margin: EdgeInsets.all(10.0),
                decoration:BoxDecoration(
                  shape:BoxShape.circle,
                  boxShadow:[ BoxShadow(
                    blurRadius: 6.0,
                    color: Colors.black45,
                    offset: Offset(0,2),
                  )]
                ),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image(
                    width: 65.0,
                    height: 65.0,
                    image: AssetImage(stories[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),);
             },
          ),
          ),
          _buildPost(0),
          _buildPost(1),
          _buildPost(2),
          _buildPost(3),
          _buildPost(4),
        ],
      ),
      bottomNavigationBar: ClipRRect(
           borderRadius: BorderRadius.only(
           topLeft: Radius.circular(30.0),
           topRight: Radius.circular(30.0)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: (){print('!!!');
                  },
                  child: Icon(
                    Icons.dashboard,
                    color:Colors.black,
                  size: 30.0,),
                ),
            title: Text(''),
            ),

            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: (){print('!!!');
                  },
                  child: Icon(
                    Icons.search,
                    color:Colors.black,
                    size: 30.0,),
                ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    color: Color(0xFF23B66F),
                    onPressed: (){print('!!!');
                    },
                    child: Icon(
                      Icons.add,
                      color:Colors.white,
                      //Color(0xFF23B66F),
                      size: 35.0,),
                  ),
                ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: (){print('!!!');
                  },
                  child: Icon(
                    Icons.favorite_border,
                    color:Colors.black,
                    size: 30.0,),
                ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: (){print('!!!');
                  },
                  child: Icon(
                    Icons.person_outline,
                    color:Colors.black,
                    size: 30.0,),
                ),
              title: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
