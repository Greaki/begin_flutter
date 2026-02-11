import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 间距扩展
extension VoidX on num {
  /// 垂直间距
  SizedBox get vVoid => SizedBox(height: toDouble().w);

  /// 水平间距
  SizedBox get hVoid => SizedBox(width: toDouble().w);
}

/// 外边距扩展
extension MarginX on num {
  /// 全方向外边距
  EdgeInsets get mAll => EdgeInsets.all(toDouble().w);

  /// 垂直外边距
  EdgeInsets get mV => EdgeInsets.symmetric(vertical: toDouble().w);

  /// 水平外边距
  EdgeInsets get mH => EdgeInsets.symmetric(horizontal: toDouble().w);

  /// 顶部外边距
  EdgeInsets get mT => EdgeInsets.only(top: toDouble().w);

  /// 底部外边距
  EdgeInsets get mB => EdgeInsets.only(bottom: toDouble().w);

  /// 左侧外边距
  EdgeInsets get mL => EdgeInsets.only(left: toDouble().w);

  /// 右侧外边距
  EdgeInsets get mR => EdgeInsets.only(right: toDouble().w);
}

/// 内边距扩展
extension PaddingX on num {
  /// 全方向内边距
  EdgeInsets get pAll => EdgeInsets.all(toDouble().w);

  /// 垂直内边距
  EdgeInsets get pV => EdgeInsets.symmetric(vertical: toDouble().w);

  /// 水平内边距
  EdgeInsets get pH => EdgeInsets.symmetric(horizontal: toDouble().w);

  /// 顶部内边距
  EdgeInsets get pT => EdgeInsets.only(top: toDouble().w);

  /// 底部内边距
  EdgeInsets get pB => EdgeInsets.only(bottom: toDouble().w);

  /// 左侧内边距
  EdgeInsets get pL => EdgeInsets.only(left: toDouble().w);

  /// 右侧内边距
  EdgeInsets get pR => EdgeInsets.only(right: toDouble().w);
}
