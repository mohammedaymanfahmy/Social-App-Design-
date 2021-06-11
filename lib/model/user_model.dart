class UserModel {
  final String name, urlImage, location, bio;
  final int countFollowers, countFollowing, countPosts;
  final List<String> urlPhoto;
  bool isFollowing;

  UserModel({
    this.name,
    this.urlImage,
    this.location,
    this.bio,
    this.countFollowers,
    this.countFollowing,
    this.countPosts,
    this.urlPhoto,
    this.isFollowing});
}
final users = <UserModel>
[
  UserModel(
    name: 'Elon Musk',
    countFollowers: 1500,
    countFollowing: 150,
    bio:"wwwww",
    countPosts: 15,
    isFollowing: true,
    location: 'united states',
    urlImage: 'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
    urlPhoto: [
      'https://cdn.cnn.com/cnnnext/dam/assets/210107120929-elon-musk-mclaren-f1-1999-vault-large-169.jpg',
      'https://kawa-news.com/wp-content/uploads/2021/04/elonmusk.jpg',
      'https://api.time.com/wp-content/uploads/2015/05/elon-musk.jpg',
      'https://media.wired.com/photos/6047ecc7efdc9e0e75672111/1:1/w_2400,c_limit/Science-TEXAS_1171863550.jpg',
    ],
  ),
  UserModel(

    countFollowing: 156322,
    bio: "The best man in th pla pla pla",
    countFollowers: 19,
    countPosts: 1987,
    isFollowing: false,
    name: 'steve jobs',
    location: 'Hafr elpaten',
    urlImage: 'https://www.pioneeringminds.com/wp-content/uploads/2018/10/Steve-Jobs.jpg',
    urlPhoto: [
      'https://api.time.com/wp-content/uploads/2014/11/steve-jobs-apple.jpg',
      'https://i.pinimg.com/474x/96/f7/2b/96f72b4f67f8b1252a1cbd04d1947983.jpg',
      'https://cdn.britannica.com/59/222659-050-F3ACF7E7/Steve-Jobs-2010.jpg',
      'https://media.npr.org/assets/img/2011/08/25/115285792_wide-ac73e1d5ad7262acdf8fd70dafd45a66afd1c965-s800-c85.jpg',
    ],
  ),
  UserModel(

    isFollowing: true,
    countPosts: 987,
    countFollowers: 79998,
    bio: "aaa b f f f" ,
    countFollowing: 9887,
    location: 'hurghada',
    name: "Jeff Bezos",
    urlPhoto: [
      'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY2NzA3ODE3OTgwMzcyMjYw/jeff-bezos-andrew-harrer_bloomberg-via-getty-images.jpg',
      'https://cdn.vox-cdn.com/thumbor/k2qvuulh9tWPeaRUpTYLuAw84SU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/19622223/GettyImages_1173078245.jpg',
      'https://s3-ap-northeast-1.amazonaws.com/psh-ex-ftnikkei-3937bb4/images/0/9/7/6/32506790-3-eng-GB/Cropped-1613633189A20210218%20Jeff%20Bezos.jpg',
    ],
    urlImage: 'https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5bb22ae84bbe6f67d2e82e05%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D524%26cropX2%3D1824%26cropY1%3D185%26cropY2%3D1486',
  ),

];