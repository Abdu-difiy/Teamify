import 'dart:io';

void printDirectoryStructure(Directory dir, IOSink sink, [String indent = '']) {
  if (!dir.existsSync()) return;
  for (var entity in dir.listSync()) {
    var name = entity.path.split(Platform.pathSeparator).last;
    sink.writeln('$indent|-- $name');
    if (entity is Directory) {
      printDirectoryStructure(entity, sink, indent + '    ');
    }
  }
}

void main() {
  var projectLib = Directory(r'C:\Users\Elnour Tech\OneDrive\Documents\GitHub\Teamify\lib');
  var outputFile = File('lib_structure.txt');
  var sink = outputFile.openWrite();
  printDirectoryStructure(projectLib, sink);
  sink.close();
  print('Directory structure saved to lib_structure.txt');
}