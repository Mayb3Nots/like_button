# like_button

[like_button ![pub package](https://img.shields.io/pub/v/like_button.svg)](https://pub.dartlang.org/packages/like_button)

Like Button is a flutter library that allows you to create a button with animation effects similar to Twitter&#x27;s heart when you like something.

Reference codes from [jd-alexander](https://github.com/jd-alexander/LikeButton) and [吉原拉面](https://github.com/yumi0629/FlutterUI/tree/master/lib/likebutton) ,thanks for their open source.

![](https://github.com/fluttercandies/Flutter_Candies/blob/master/gif/like_button/like_button.gif)

![](https://github.com/fluttercandies/Flutter_Candies/blob/master/gif/like_button/photo_view.gif)

##  How to use it.

the default effects is Icons.favorite
```dart
  LikeButton(),
```

and you can also define custom effects.
```dart
       LikeButton(
               size: buttonSize,
               circleColor:
                   CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
               bubblesColor: BubblesColor(
                 dotPrimaryColor: Color(0xff33b5e5),
                 dotSecondaryColor: Color(0xff0099cc),
               ),
               likeBuilder: (bool isLiked) {
                 return Icon(
                   Icons.home,
                   color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                   size: buttonSize,
                 );
               },
               likeCount: 665,
               countBuilder: (int count, bool isLiked, String text) {
                 var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                 Widget result;
                 if (count == 0) {
                   result = Text(
                     "love",
                     style: TextStyle(color: color),
                   );
                 } else
                   result = Text(
                     text,
                     style: TextStyle(color: color),
                   );
                 return result;
               },
             ),
```


## parameters
| parameter | description | default |
| ------ | ------ | ------ |
| size | size of like widget | 30.0 |
| animationDuration | animation duration to change isLiked state | const Duration(milliseconds: 1000) |
| bubblesSize | total size of bubbles | size * 2.0 |
| bubblesColor | colors of bubbles | const BubblesColor(dotPrimaryColor: const Color(0xFFFFC107),dotSecondaryColor: const Color(0xFFFF9800),dotThirdColor: const Color(0xFFFF5722),dotLastColor: const Color(0xFFF44336),) |
| circleSize | final size of circle | size * 0.8 |
| circleColor | colors of circle | const CircleColor(start: const Color(0xFFFF5722), end: const Color(0xFFFFC107) |
| onTap |  tap call back of like button | you can handle your request in this call back |
| isLiked | whether it is liked | false |
| likeCount | if null, will not show) | null |
| mainAxisAlignment | MainAxisAlignment for like button | MainAxisAlignment.center |
| likeBuilder | builder to create like widget| null |
| countBuilder | builder to create like count widget | null |
| likeCountAnimationDuration | animation duration to change like count | const Duration(milliseconds: 500)  |
| likeCountAnimationType | animation type to change like count(none,part,all) | LikeCountAnimationType.part |
| likeCountPadding | padding for like count widget | const EdgeInsets.only(left: 3.0) |