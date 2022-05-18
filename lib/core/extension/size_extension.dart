import 'package:flutter/cupertino.dart';

extension SizeContext on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
  get s => mq.size.height;
  
}
