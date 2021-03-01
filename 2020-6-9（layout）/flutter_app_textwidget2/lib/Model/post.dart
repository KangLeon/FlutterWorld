class Post {
  const Post ({
    this.title,
    this.author,
    this.imageURL,
    this.description,
  });

  final String title;
  final String author;
  final String imageURL;
  final String description;
}

final List<Post> posts = [
  Post(
    title: '科比自传',
    author: '科比',
    description: '地球上最伟大的篮球运动员',
    imageURL: 'https://bkimg.cdn.bcebos.com/pic/9e3df8dcd100baa1a5fd20114d10b912c9fc2e42?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2U4MA==,xp_5,yp_5',
  ),
  Post(
    title: '詹姆斯自传',
    author: '詹姆斯',
    description: '最强身体天赋的运动员',
    imageURL: 'https://bkimg.cdn.bcebos.com/pic/77c6a7efce1b9d16ff80d1b1fddeb48f8d54649e?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2UxMTY=,xp_5,yp_5',
  ),
  Post(
    title: '加内特自传',
    author: '加内特',
    description: '他的外号叫做狼王',
    imageURL: 'https://bkimg.cdn.bcebos.com/pic/b90e7bec54e736d191c80edb97504fc2d462690e?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2U4MA==,xp_5,yp_5',
  )
];