import 'package:flutter/material.dart';
import 'package:lottery_ui/model/dropdown_items.dart';

import '../../constants.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  List<DropdownMenuItem<DropDownItems>>? _dropdownMenuItems;
  DropDownItems? _selectedItem;

  List<DropdownMenuItem<DropDownItems>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<DropDownItems>> items = [];
    for (DropDownItems listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Row(
            children: [
              Image.asset(
                listItem.itemIcon,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                listItem.itemName,
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  void initState() {
    _dropdownMenuItems = buildDropDownMenuItems(dropDownItemList);
    _selectedItem = _dropdownMenuItems![0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4736B5),
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Color(0xFF4736B5),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 500,
          margin: EdgeInsets.symmetric(horizontal: twentyFourDp),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(twentyFourDp)),
          child: Column(
            children: [
              buildDropdown(),
              buildDate(),
            ],
          ),
        ),
      ),
    );
  }

  //drop down item
  Widget buildDropdown() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin:
          EdgeInsets.symmetric(horizontal: twentyFourDp, vertical: sixteenDp),
      padding: const EdgeInsets.only(left: tenDp, right: tenDp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(twentyFourDp),
          color: Colors.indigoAccent.withOpacity(0.1),
          border: Border.all(
              width: 1, color: Colors.indigoAccent.withOpacity(0.1))),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            value: _selectedItem,
            items: _dropdownMenuItems,
            onChanged: (DropDownItems? value) {
              setState(() {
                _selectedItem = value;
              });
            }),
      ),
    );
  }

  //date
  Widget buildDate() {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin:
            EdgeInsets.symmetric(horizontal: twentyFourDp, vertical: sixteenDp),
        padding:
            const EdgeInsets.symmetric(horizontal: tenDp, vertical: twelveDp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(twentyFourDp),
          border:
              Border.all(width: 1, color: Colors.indigoAccent.withOpacity(0.1)),
          color: Colors.indigoAccent.withOpacity(0.1),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: eightDp),
                  child: Text(date),
                )
              ],
            ),
            Icon(
              Icons.calendar_today,
              color: Colors.grey,
            )
          ],
        ));
  }
}
