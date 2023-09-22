void main(List<String> args) {
  // Di dalam array 4 string
  // print deret string
  var arr = ["Kucing", "Ayam", "Bebek", "Ular"];

  var allAnimal = "";
  for (int i = arr.length - 1; i >= 0; i--) {
    if (i == 1) continue;
    var currentAnimal = arr[i];
    var splitName = currentAnimal.split("");
    var newNameArr = <String>[];
    var newName = "";
    for (var j = splitName.length - 1; j >= 0; j--) {
      newNameArr.add(splitName[j]);
    }
    newName = newNameArr.join("");
    allAnimal += " " + newName;
  }
  print(allAnimal);
  var valueFind = find(allAnimal.split(" "), "kebeB");
  var reversed = "";
  for (var i = valueFind.split("").length - 1; i >= 0; i--) {
    reversed += valueFind.split("")[i];
  }
  print("reversed: $reversed");
  print(valueFind);
  // print();
}

String find(List<String> listToFind, String keyword) {
  return listToFind.firstWhere((element) => element == keyword,
      orElse: () => "Not Found");
}
