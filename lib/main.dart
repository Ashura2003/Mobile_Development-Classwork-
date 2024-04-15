import 'package:dart_application_1/batch.dart';
import 'package:dart_application_1/student.dart';

void main() {
  Batch batch1 = Batch(batchName: "32-A");
  Batch batch2 = Batch(batchName: "32-B");
  Batch batch3 = Batch(batchName: "32-C");

  Student std1 = Student(fullName: "Kiran", batch: batch1);
  Student std2 = Student(fullName: "Nitya", batch: batch1);
  Student std3 = Student(fullName: "Manoj", batch: batch2);

  print('Manoj is in batch ' + std3.batch!.batchName);

  List<Student> stds = [std1, std2, std3];

  for (Student s in stds) {
    print('${s.fullName} studies in batch ${s.batch!.batchName}');
    if (s.batch!.batchName == '32-A') {
      print('${s.fullName} student in batch 32-A');
    }
  }
}
