import 'dart:io';

void main() {
  var str = stdin.readLineSync()!.trim();  // ইউজারের ইনপুট নিচ্ছে এবং সামনের-পেছনের স্পেস কেটে নিচ্ছে
  int letterCount = 0;                     // অক্ষর গোনার জন্য একটা কাউন্টার

  for (int i = 0; i < str.length; i++) {   // স্ট্রিংয়ের প্রতিটি ক্যারেক্টারের উপর লুপ
    var ch = str[i];                       // বর্তমান ক্যারেক্টার

    if (RegExp(r'[a-zA-Z]').hasMatch(ch)) {   // যদি ক্যারেক্টারটা ইংরেজি অক্ষর হয়
      letterCount++;                          // তাহলে অক্ষর গণনায় যোগ হবে

      if (letterCount % 3 == 0) {             // যদি এটা ৩ দিয়ে ভাগ যায় (মানে প্রতি তৃতীয় অক্ষর)
        stdout.write(ch.toUpperCase());       // তাহলে এটা Uppercase করে প্রিন্ট করো
      } else {
        stdout.write(ch);                     // না হলে যেরকম আছে সেরকমই প্রিন্ট করো
      }

    } else {
      // যদি অক্ষর না হয় (মানে সংখ্যা বা অন্য symbol), তাহলে সরাসরি প্রিন্ট করো, গোনায় ধরবে না
      stdout.write(ch);
    }
  }
}
