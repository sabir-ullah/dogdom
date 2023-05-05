class PostModel{
  final String profileImage;
  final String name;
  final String postText;
  final String postImage;
  final int likes;
  final String comments;
  final String shares;
  final String? subTitle;

  PostModel({required this.profileImage, required this.name, required this.postText, required this.postImage, required this.likes, required this.comments, required this.shares,this.subTitle});

}