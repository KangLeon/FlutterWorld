class Post {
  const Post ({
    this.title,
    this.author,
    this.imageURL,
  });

  final String title;
  final String author;
  final String imageURL;
}

final List<Post> posts = [
  Post(
    title: '',
    author: '',
    imageURL: '',
  ),
  Post(
    title: '',
    author: '',
    imageURL: '',
  ),
  Post(
    title: '',
    author: '',
    imageURL: '',
  )
];