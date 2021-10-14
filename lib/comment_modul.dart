class Comments {
  String authorName;
  String authorImageUrl;
  String text;
  int favorite1;
  bool count=false;
Comments({
  this.authorName,
  this.authorImageUrl,
  this.text,
  this.favorite1,
  this.count,
});
}
List <Comments> comments=[
  Comments(
    authorName: 'Jack Pirson',
    authorImageUrl: 'images/1.1.jpg',
    text: 'Oooooooo Very Nice !!!',
    favorite1: 127,
    count: false,
  ),
  Comments(
      authorName: 'Juzel',
      authorImageUrl: 'images/3.jpg',
      text: 'très beau',
    favorite1: 1714,
    count: false,
  ),
  Comments(
      authorName: 'Helena',
      authorImageUrl: 'images/3.3.jpg',
      text: '非常に美しい',
    favorite1: 658,
    count: false,
  ),

  Comments(
      authorName: 'Etsio',
      authorImageUrl: 'images/4.jpg',
      text: 'molto bello',
    favorite1: 4546,
    count: false,
  ),
  Comments(
      authorName: 'Murat',
      authorImageUrl: 'images/4.4.jpg',
      text: 'çok güzel',
    favorite1: 3554,
    count: false,
  ),
  Comments(
      authorName: 'Natasha',
      authorImageUrl: 'images/1.jpg',
      text: 'какая принцесса',
    favorite1: 9351,
    count: false,
  ),
];