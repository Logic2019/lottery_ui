import 'package:flutter/cupertino.dart';
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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: sixteenDp, top: sixteenDp, right: tenDp),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                Text(
                  seeResults,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: fourHundredDp,
                margin: EdgeInsets.symmetric(horizontal: twentyFourDp),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(twentyFourDp)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: twentyFourDp,
                    ),
                    buildDropdown(),
                    buildDate(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: thirtyDp, vertical: tenDp),
                      child: Text(
                        enterYourNumber,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildRoundContainerWithNumber("05"),
                        buildRoundContainerWithNumber("09"),
                        buildRoundContainerWithNumber(12),
                        buildRoundContainerWithNumber(18),
                        buildRoundContainerWithNumber(21),
                      ],
                    ),
                    buildResultsButton()
                  ],
                ),
              ),
            ),
          ),
        ],
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

  //numbers to select
  Widget buildRoundContainerWithNumber(number) {
    return Container(
      width: fortyDp,
      height: fortyDp,
      margin: EdgeInsets.symmetric(horizontal: fourDp, vertical: tenDp),
      decoration: BoxDecoration(
          color: Colors.indigoAccent.withOpacity(0.1),
          border:
              Border.all(width: 1, color: Colors.indigoAccent.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(twentyFourDp)),
      child: Center(
          child: Text(
        "$number",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
      )),
    );
  }

  //see results button
  Widget buildResultsButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: fortyEightDp,
      margin: EdgeInsets.symmetric(horizontal: sixteenDp, vertical: thirtyDp),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          seeResults,
        ),
        textColor: Colors.white,
        color: Colors.indigo,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(twentyDp)),
      ),
    );
  }
}
