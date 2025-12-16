import 'package:json_annotation/json_annotation.dart';

import '../classes/images.dart';
import '../classes/slide.dart';
import '../classes/text_value.dart';
import '../template/ppt/slides/title.xml.mustache.dart';

part 'title.g.dart';

@JsonSerializable(createFactory: false)
class SlideTitle extends Slide {
  SlideTitle({
    super.name = 'Title',
    this.title,
    this.pageNumberImage,
    this.logoImage,
    super.slideNumber,
    super.speakerNotes,
    this.author,
  });

  TextValue? title;
  TextValue? author;
  ImageReference? pageNumberImage;
  ImageReference? logoImage;

  @override
  int get layoutId => 1;

  @override
  Map<String, dynamic> toJson() => _$SlideTitleToJson(this);

  @override
  Map<int, ImageReference?> get imageRefs => {
        ...super.imageRefs,
        4: pageNumberImage,
        5: logoImage,
      };

  @override
  String get source => template;
}
