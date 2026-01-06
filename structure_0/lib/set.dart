import 'dart:io';

final myList = [1, 2, 2, 3, 4];
final mySet = <int>{};
for (final item in myList) {
  if (mySet.contains(item)) {
  // mySet already has it, so it's a duplicate
}

mySet.add(item);
}