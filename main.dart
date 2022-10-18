import 'dart:io';
void main() {

  var shoppingList = {};

  double total = 0;
  double keeper = 0;
  double keeper2 = 0;

  while(true){ 

   
  print("Add a type of fruit or vegetable");
  
  var kind_fv = stdin.readLineSync() ?? "";

  if(kind_fv.isEmpty){
    print("our shopping list's total weight is ; ");
    break;
  }

  print("Amount of " + kind_fv + " :");
  //print("miktar giriniz");
  var amount = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
  if(amount > 0 && keeper == 0){
     keeper = amount;
  }

  shoppingList.addAll({
    kind_fv : amount
  });
 
  };

   for(var i in shoppingList.values){
    
    total = total + i;
  }
  print("Our shopping List ;");
  print(shoppingList);
  keeper2 = total - ((total/1000).toInt())*1000;
  print("and our shopping list's total weight ;");
  print(((total/1000).toInt()).toString() +" kg " + (keeper2.toInt()).toString() + " gr");
  
  }
  