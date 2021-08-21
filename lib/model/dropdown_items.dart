import 'package:lottery_ui/constants.dart';

///This class represents the data that will be displayed in the drop down
class DropDownItems {
  final itemName;
  final itemIcon;

  //constructor to initialise object
  DropDownItems({this.itemName, this.itemIcon});
}

//list of items to populate drop down
List<DropDownItems> dropDownItemList = [
  DropDownItems(itemName: jackPort, itemIcon: 'assets/images/jackport.png'),
  DropDownItems(itemName: jackPort, itemIcon: 'assets/images/jackport.png'),
  DropDownItems(itemName: jackPort, itemIcon: 'assets/images/jackport.png'),
  DropDownItems(itemName: jackPort, itemIcon: 'assets/images/jackport.png'),
];
