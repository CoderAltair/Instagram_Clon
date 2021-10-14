class Post{
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
  this.authorName,
    this.authorImageUrl,
    this.timeAgo,
    this.imageUrl,
  });
}
final List<Post>posts =[
  Post(
    authorName:'Alisa Martin',
    authorImageUrl: 'images/3.3.jpg',
    timeAgo:'5 min',
    imageUrl:'images/3.jpg'
),
  Post(
      authorName:'Etsio  Auditore',
      authorImageUrl: 'images/2.2.jpg',
      timeAgo:'long time ago',
      imageUrl:'images/2.jpg'
  ),
  Post(
      authorName:'Psy',
      authorImageUrl: 'images/1.jpg',
      timeAgo:'online',
      imageUrl:'images/1.1.jpg'
  ),
  Post(
      authorName:'Kamron',
      authorImageUrl: 'images/4.jpg',
      timeAgo:'10 min',
      imageUrl:'images/4.4.jpg'
  ),
  Post(
      authorName:'Qahramon',
      authorImageUrl: 'images/5.5.jpg',
      timeAgo:'long time ago',
      imageUrl:'images/5.jpg'
  ),

];
final List<String> stories=[
    'images/1.jpg',
    'images/1.1.jpg',
    'images/3.jpg',
    'images/3.3.jpg',
    'images/4.jpg',
    'images/4.4.jpg',
    'images/0.jpg',
     'images/2.jpg',

];