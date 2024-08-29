import 'dart:io';

void main() {
  final directory =
      Directory('lib/src/features'); // Change this to your project directory
  final hardCodedTextPattern = RegExp('(["\'`])(.*?)(\1)(?!\.tr)');
  final excludedFiles = ['color_constant.dart', 'translations.dart'];

  directory.listSync(recursive: true).forEach((file) {
    if (file is File &&
        file.path.endsWith('.dart') &&
        !isExcluded(file.path, excludedFiles)) {
      // Don't check in
      final content = file.readAsStringSync();
      final matches = hardCodedTextPattern.allMatches(content);

      for (final match in matches) {
        final hardCodedString = match.group(0);
        if (hardCodedString != null
            // && !isLocalized(hardCodedString)
            ) {
          print('Hard-coded text found in ${file.path}: $hardCodedString');
        }
      }
    }
  });
}

bool isExcluded(String filePath, List<String> excludedFiles) {
  return excludedFiles.any((excludedFile) => filePath.endsWith(excludedFile));
}

bool isLocalized(String text) {
  // Add your logic to check if the text is localized
  // For example, check if the text is wrapped in a localization function
  return text.contains('S.of(context).');
}
