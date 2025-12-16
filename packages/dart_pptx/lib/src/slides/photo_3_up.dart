import 'package:json_annotation/json_annotation.dart';

import '../classes/images.dart';
import '../classes/slide.dart';
import '../template/ppt/slides/photo_3_up.xml.mustache.dart';

import '../classes/text_value.dart';
part 'photo_3_up.g.dart';

@JsonSerializable(createFactory: false)
class SlidePhoto3Up extends Slide {
  SlidePhoto3Up({
    super.name = 'Photo 3 Up',
    this.image1,
    this.image2,
    this.image3,
    this.pageNumberImage,
    this.logoImage,
    this.photoLabel1,
    this.photoLabel2,
    this.photoLabel3,
    this.photoDate1,
    this.photoDate2,
    this.photoDate3,
    super.speakerNotes,
    super.slideNumber,
    this.title,
  });

  ImageReference? image1, image2, image3;
  ImageReference? pageNumberImage;
  ImageReference? logoImage;
  TextValue? title;
  TextValue? photoLabel1, photoLabel2, photoLabel3;
  TextValue? photoDate1, photoDate2, photoDate3;

  @override
  int get layoutId => 13;

  @override
  Map<int, ImageReference?> get imageRefs => {
        ...super.imageRefs,
        1: image1,
        2: image2,
        3: image3,
        4: pageNumberImage,
        5: logoImage,
      };

  @override
  Map<String, dynamic> toJson() => _$SlidePhoto3UpToJson(this);

  @override
  String get source => template;
}
