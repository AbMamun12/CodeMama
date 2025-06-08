/* একটি ডুপ্লিকেট শুধু একবার প্রিন্ট করার জন্য
import 'dart:io';

void main() {
  // প্রথম লাইনে সংখ্যা N ইনপুট
  int n = int.parse(stdin.readLineSync()!);

  // দ্বিতীয় লাইনের ইনপুট থেকে শুধু প্রথম Nটি সংখ্যা নেওয়া হবে
  List<String> inputNumbers = stdin.readLineSync()!.split(' ');
  List<int> numbers = inputNumbers.take(n).map(int.parse).toList();

  Set<int> seen = {};

  for (int num in numbers) {
    if (seen.contains(num)) {
      print(num); // ডুপ্লিকেট পাওয়া গেলে প্রিন্ট করে বের হয়ে যাবে
      return;
    }
    seen.add(num);
  }

  // যদি কোন ডুপ্লিকেট না পাওয়া যায়
  print("no duplicate found");
}*/
import 'dart:io';

/*import 'dart:io';

// একটি ডুপ্লিকেট শুধু একবার প্রিন্ট করার জন্য
void main() {
  var input1 = stdin.readLineSync()!;
  var input2 = stdin.readLineSync()!;

  int n = int.parse(input1);
  var data = input2.split(" ");

  bool found = false;

  for (int i = 0; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      if (data[i] == data[j]) {
        print(data[i]);
        found = true;
        break;
      }
    }
    if (found) {
      break;
    }
  }

  if (!found) {
    print("No duplicate");
  }
}
*/

// একাধিক ডুপ্লিকেট থাকলে সবগুলোই প্রিন্ট করবে

void main() {
  var input1 = stdin.readLineSync()!;
  var input2 = stdin.readLineSync()!;

  int n = int.parse(input1);
  var data = input2.split(" ");

  List<String> printed = []; // যাতে একই ডুপ্লিকেট বারবার না প্রিন্ট হয়
  bool found = false;

  for (int i = 0; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      if (data[i] == data[j]) {
        // যদি আগেই প্রিন্ট করা হয়ে থাকে তাহলে আর প্রিন্ট করব না
        bool alreadyPrinted = false;
        for (int k = 0; k < printed.length; k++) {
          if (printed[k] == data[i]) {
            alreadyPrinted = true;
            break;
          }
        }

        if (!alreadyPrinted) {
          print(data[i]);
          printed.add(data[i]);
          found = true;
        }
        break; // একবার মিলে গেলে বাহিরে যাবো, কিন্তু i লুপ চলবে
      }
    }
  }

  if (!found) {
    print("No duplicate");
  }
}

