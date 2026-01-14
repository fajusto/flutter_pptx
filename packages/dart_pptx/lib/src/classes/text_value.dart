import 'package:json_annotation/json_annotation.dart';
import 'package:mustache_template/mustache_template.dart';

import 'slide.dart';

part 'text_value.g.dart';

@JsonSerializable(createFactory: false)
class TextItem {
  final String value;
  bool isBold, isItalic, isUnderline, isStrikeThrough;

  bool get isStylized => isBold || isItalic || isUnderline || isStrikeThrough;

  TextItem(
    this.value, {
    this.isBold = false,
    this.isItalic = false,
    this.isUnderline = false,
    this.isStrikeThrough = false,
  });

  Map<String, dynamic> toJson() => _$TextItemToJson(this);
}

@JsonSerializable(createFactory: false)
class TextValueLine {
  final List<TextItem> values;
  final int? level;
  final String? bulletChar;

  TextValueLine({
    required this.values,
    this.level,
    this.bulletChar,
  });

  bool get hasCustomParagraphProps => level != null || bulletChar != null;

  Map<String, dynamic> toJson() => _$TextValueLineToJson(this);
}

@JsonSerializable(createFactory: false)
class TextValue {
  final List<TextValueLine> lines;

  TextValue({
    required this.lines,
  });

  factory TextValue.uniform(
    Object? value, {
    bool isBold = false,
    bool isItalic = false,
    bool isUnderline = false,
    bool isStrikeThrough = false,
  }) {
    final stringValue = value?.toString() ?? '';
    return TextValue(
      lines: [
        if (stringValue.isNotEmpty)
          TextValueLine(
            values: [
              TextItem(
                stringValue,
                isBold: isBold,
                isItalic: isItalic,
                isUnderline: isUnderline,
                isStrikeThrough: isStrikeThrough,
              ),
            ],
          ),
      ],
    );
  }

  factory TextValue.singleLine(List<TextItem>? values) {
    return TextValue(lines: [
      TextValueLine(values: values ?? []),
    ]);
  }

  factory TextValue.multiLine(List<TextValueLine>? lines) {
    return TextValue(lines: lines ?? []);
  }

  Map<String, dynamic> toJson() => _$TextValueToJson(this);
}

final multiLineTemplate = Template(
  _multiLine,
  partialResolver: resolvePartials,
);

final singleLineTemplate = Template(
  _singleLine,
  partialResolver: resolvePartials,
);

const _multiLine = r'''
{{#lines}}
<a:p>
  {{#hasCustomParagraphProps}}
  <a:pPr{{#level}} lvl="{{level}}"{{/level}}>
    {{#bulletChar}}
    <a:buFont typeface="Courier New" pitchFamily="49" charset="0"/>
    <a:buChar char="{{bulletChar}}"/>
    {{/bulletChar}}
  </a:pPr>
  {{/hasCustomParagraphProps}}
  {{^hasCustomParagraphProps}}
  <a:pPr>
    <a:buNone/>
  </a:pPr>
  {{/hasCustomParagraphProps}}
  {{>text-line}}
  <a:endParaRPr/>
</a:p>
{{/lines}}
''';

const _singleLine = r'''
{{#values}}
<a:r>
    {{#isStylized}}
    <a:rPr
        {{#isBold}}b="1"{{/isBold}}
        {{#isItalic}}i="1"{{/isItalic}}
        {{#isUnderline}}u="sng"{{/isUnderline}}
        {{#isStrikeThrough}}strike="sngStrike"{{/isStrikeThrough}}
    />
    {{/isStylized}}
    <a:t>{{value}}</a:t>
</a:r>
{{/values}}
''';

extension TextValueUtils on Object {
  TextValue toTextValue() {
    return TextValue.uniform(this);
  }

  TextValueLine toTextLine() {
    return TextValueLine(values: [TextItem(toString())]);
  }
}
