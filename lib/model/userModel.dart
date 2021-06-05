class UserModel {
  final String name, urlPhoto, location, bio;
  final int countFollowers, countFollowing, countPosts;
  final List<String> userPhoto;
  bool isFollowing;

  UserModel(
      {this.name,
      this.urlPhoto,
      this.location,
      this.bio,
      this.countFollowers,
      this.countFollowing,
      this.countPosts,
      this.userPhoto,
      this.isFollowing});
}

final users = <UserModel>[
  UserModel(
      name: "Lionel Messi",
      bio:
          "Lionel Andrés Messi[note 1] (Spanish pronunciation: [ljoˈnel anˈdɾes ˈmesi] (About this soundlisten);[A] also known as Leo Messi,[8] (born 24 June 1987) is an Argentine professional footballer who plays as a forward and captains both Spanish club Barcelona and the Argentina national team. Often considered as the best player in the world and widely regarded as one of the greatest players of all time, Messi has won a record six Ballon d'Or awards,[note 2] a record six European Golden Shoes, and in 2020 was named to the Ballon d'Or Dream Team.",
      countFollowers: 17000000,
      countFollowing: 100,
      location: "Argentina",
      isFollowing: true,
      countPosts: 35,
      urlPhoto:
          "https://idsb.tmgrup.com.tr/ly/uploads/images/2020/10/27/67982.jpg",
      userPhoto: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmNjrui4Myhn9WMgQLzJ07PsfiAQUIu45qiZkUPSHRPggFktHjnImAa2e41J4lZ5yD930&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcewUolS3RygJ6hIElIPUd14iCM8OZXoTAgu167iMQcB4P6eT-BdR0RWaJaoLFmiaTzbY&usqp=CAU",
        "https://i.pinimg.com/564x/8b/7b/fe/8b7bfe55eb34e698701b2c5e7e522320.jpg",
      ]),
  UserModel(
      name: "Cristiano Ronaldo",
      bio:
          "Cristiano Ronaldo dos Santos Aveiro GOIH ComM (Portuguese pronunciation: [kɾiʃˈtjɐnu ʁɔˈnaɫdu]; born 5 February 1985) is a Portuguese professional footballer who plays as a forward for Serie A club Juventus and captains the Portugal national team. Often considered one of the best players in the world and widely regarded as one of the greatest players of all time, Ronaldo has won five Ballon d'Or awards[note 3] and four European Golden Shoes, both of which are records for a European player. He has won 32 major trophies in his career,",
      countFollowers: 15000000,
      countFollowing: 200,
      location: "Portugal",
      isFollowing: false,
      countPosts: 118,
      urlPhoto:
          "https://i.pinimg.com/564x/02/bb/e6/02bbe6003b0a5a56f42fed78648e8ab3.jpg",
      userPhoto: [
        "https://i.pinimg.com/564x/eb/10/92/eb1092200704eb28013de0ff006d781e.jpg",
        "https://i.pinimg.com/564x/a4/87/27/a48727b3bd6536b74cff97fe62ce12f4.jpg",
        "https://i.pinimg.com/564x/df/c4/33/dfc4335b4d2c78763be058198a577a84.jpg",
      ]),
];
