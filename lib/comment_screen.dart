import 'package:flutter/material.dart';
import 'package:instagram/comment_modul.dart';
import 'package:instagram/modullar.dart';
import 'package:instagram/work_page.dart';
class Comments extends StatefulWidget {
  final Post post;
  Comments({this.post});
  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children:<Widget> [
          Container(
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
                    Row(
                      children:<Widget> [
                        IconButton(icon: Icon(Icons.arrow_back),
                            color: Colors.black,
                            iconSize: 30.0,
                            onPressed:() {}),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          child: ListTile(
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
                                      image: AssetImage(widget.post.authorImageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                              ),
                            ),
                            title:Text(widget.post.authorName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                            subtitle:Text(widget.post.timeAgo),
                            trailing: IconButton(
                                icon: Icon(Icons.more_horiz),
                                color: Colors.black,
                                onPressed: (){}),
                          ),
                        ),
                      ],
                    ),
                  Container(
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
                          image: AssetImage(widget.post.imageUrl),
                          fit:BoxFit.cover,
                        )
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
                                      onPressed:()=>print('like')),
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
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 700.0,
              decoration:BoxDecoration(

                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft:Radius.circular(30.0),
                )
              ),
              child: Expanded(
                child: Column(
                  children: <Widget>[
                    _buildComment(0),
                    _buildComment(1),
                    _buildComment(2),
                    _buildComment(3),
                    _buildComment(4),
                    _buildComment(5)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Transform.translate(
          offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,-2),
                      blurRadius: 6.0,
                      color: Colors.black12,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0)
                  )
                ),
                  height: 60.0,
                child: TextField(
                  decoration:InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.all(20.0),
                    hintText: 'Add a Comment',
                    suffixIcon: Container(
                      width: 70.0,
                      margin: EdgeInsets.only(right: 10.0),
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                          ),
                          onPressed: (){} ,
                          child: Icon(
                            Icons.send,
                            size: 30.0,
                            color:Color(0xFF23B66F),
                          )),
                    )
                  )
                ),
      ),

      ),
    );
  }
  Widget _buildComment(int index){
    bool like=false;
    return
      Padding(
        padding:EdgeInsets.all(10.0) ,
        child: Container(
          decoration: BoxDecoration(
              border:Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          child: ListTile(
            leading: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image(
                    height: 50.0,
                    width: 50.0,
                    image: AssetImage(comments[index].authorImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            title: Text(
              comments[index].authorName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(comments[index].text),
            trailing: IconButton(
                icon:( Icon(Icons.favorite)  ),
                color: Colors.red[800],
                onPressed:()=>print('sdfv')
            ),
          ),
        ),
      );
  }
}

