import 'dart:io';

/* void main() { // যদি নিউমেরিক সংখ্যা হিসাবে না ধরা হয়
  var str = stdin.readLineSync()!.trim();
  int letterCount = 0;

  for (int i = 0; i < str.length; i++) {
    var ch = str[i];
    stdout.write(ch);  // যাই হোক না কেন, ক্যারেক্টারটা আগে প্রিন্ট করবো

    if (RegExp(r'[a-zA-Z]').hasMatch(ch)) {
      letterCount++;

      if (letterCount % 2 == 0) {
        stdout.write('x');  // প্রতি দুই অক্ষরের পর x বসাবে
      }
    }
  }
}*/

void main() {
  var str = stdin.readLineSync()!.trim();
  int count = 0;

  for (int i = 0; i < str.length; i++) {
    stdout.write(str[i]);
    count++;

    if (count % 2 == 0) {
      stdout.write('x');
    }
  }
}







