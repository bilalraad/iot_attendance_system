enum Level {
  phD('الدكتوراة'),
  master('الماستر'),
  bachelor('بكالريوس');

  final String translate;
  const Level(this.translate);
}

enum ReportFileType { pdf, word, unKnown }

enum Role {
  admin('ادمن'),
  superAdmin('سوبر ادمن');

  final String translate;
  const Role(this.translate);
}

enum PickerFileTypes { pdf, doc, docx, xlsx }
