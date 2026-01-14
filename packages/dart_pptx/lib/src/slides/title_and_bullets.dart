import 'package:json_annotation/json_annotation.dart';

import '../classes/text_value.dart';
import '../classes/images.dart';
import '../template/ppt/slides/title_and_bullets.xml.mustache.dart';
import 'bullets.dart';

part 'title_and_bullets.g.dart';

@JsonSerializable(createFactory: false)
class SlideTitleAndBullets extends SlideBullets {
  SlideTitleAndBullets({
    required super.bullets,
    super.name = 'Title and Bullets',
    this.title,
    this.subtitle,
    this.pageNumberImage,
    this.logoImage,
    super.speakerNotes,
    super.slideNumber,
  });

  TextValue? title;
  TextValue? subtitle;
  ImageReference? pageNumberImage;
  ImageReference? logoImage;

  bool get hasBullets => bullets.isNotEmpty;

  @override
  int get layoutId => 4;

  @override
  Map<String, dynamic> toJson() => _$SlideTitleAndBulletsToJson(this);

  @override
  Map<int, ImageReference?> get imageRefs => {
        ...super.imageRefs,
        4: pageNumberImage,
        5: logoImage,
      };

  @override
  String get source => template;
}
