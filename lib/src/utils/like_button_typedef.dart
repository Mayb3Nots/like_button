import 'package:flutter/material.dart';

///
///  create by zmtzawqlp on 2019/5/27
///

typedef OnClick = Future<bool> Function(bool isLiked);

///build widget when isLike is changing
typedef LikeWidgetBuilder = Widget Function(bool isLiked);

///build widget when likeCount is changing
typedef CountWidgetBuilder = Widget Function(int likeCount, bool isLiked);

enum SlideDirection {
  Down,
  Up,
}