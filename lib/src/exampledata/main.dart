import 'package:kursuskoding/src/exampledata/datakdiri.dart';

import 'getdatadiri.dart';

void main() {
  GetData namaku = GetData(getNama: PersonalData.data);
  print(namaku);
}
