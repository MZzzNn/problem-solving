import 'dart:io';

void main(List<String> arguments) {
  try{

    int? num = int.parse(stdin.readLineSync()!);

    var x = stdin.readLineSync();  //1 2 3 4 5 6 7 8 9 10


    var arrString= x!.split(' ');  //['1' ,'2' ,'3' ,... ]


    var arr = <int>[];
    arr = arrString.map(int.parse).toList();  //[1 , 2 ,3 , 0]


    var smallNum = getSmallNumber(arr); // 1

    print('Menor valor: ${smallNum}');


    print('Posicao: ${ arr.indexOf( smallNum ) }'); //0

  }catch(e){
    print(e.toString());
  }
}

int getSmallNumber(List myList){
  int small= myList.first; //1
  myList.forEach((element) {
    small > element ? small = element : small;
  });
  return small;
}