import 'zip_file_encoder.dart';

List<int>? createZip(Map<String, dynamic> files) {
  final encoder = ZipFileEncoder();
  final tempDir = fs.systemTempDirectory.createTempSync();

  for (final entry in files.entries) {
    final name = entry.key;
    final value = entry.value;
    final file = fs.file('${tempDir.path}/$name');
    if (!file.existsSync()) {
      file.createSync(recursive: true);
    }
    if (value is List<int>) {
      file.writeAsBytesSync(value);
    } else if (value is String) {
      file.writeAsStringSync(value);
    }
  }
}
