import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottery_ui/ui/payment/payment_page.dart';

import '../../constants.dart';

class ChooseNumber extends StatefulWidget {
  static const routeName = '/chooseNumber';

  const ChooseNumber({Key? key}) : super(key: key);

  @override
  _ChooseNumberState createState() => _ChooseNumberState();
}

class _ChooseNumberState extends State<ChooseNumber> {
  //generated numbers
  var listOfNumbers = new List<int>.generate(30, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Color(0xFF4736B5),
        // title: Text(payment),
      ),
      backgroundColor: Color(0xFF4736B5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //title and back
          Padding(
            padding: const EdgeInsets.only(
                left: sixteenDp, top: tenDp, right: tenDp),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                Text(
                  chooseNumber,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: eighteenDp,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: twentyDp, top: twentyDp),
            child: Text(
              choose,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: eighteenDp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: twentyDp, top: sixDp),
            child: Text(
              fiveNumbers,
              style: TextStyle(color: Colors.white, fontSize: fourteenDp),
            ),
          ),
          SizedBox(
            height: sixteenDp,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildSelectedNumber(12),
              buildSelectedNumber(18),
              buildSelectedNumber(22),
              buildSelectedNumber(26),
              buildSelectedNumber(30),
            ],
          ),

          SizedBox(
            height: twentyDp,
          ),
          Expanded(child: buildNumbersScreen())
        ],
      ),
    );
  }

  //numbers chosen (- -)
  Widget buildSelectedNumber(number) {
    return Container(
      width: fiftyDp,
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: fourDp),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(width: 1, color: Colors.indigoAccent.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(twentyFourDp)),
      child: Center(
          child: Text(
        "$number",
        style: TextStyle(
            color: Color(0xFF4736B5),
            fontWeight: FontWeight.bold,
            fontSize: twentyDp),
      )),
    );
  }

  //build numbers screen with selected numbers having different color state
  Widget buildNumbersScreen() {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(width: 1, color: Colors.indigoAccent.withOpacity(0.1)),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(thirtyDp),
              topRight: Radius.circular(thirtyDp))),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    //time and drop down
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: thirtyDp, horizontal: twentyDp),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //time ?? compromised
                          Padding(
                            padding: const EdgeInsets.only(top: eightDp),
                            child: Text(
                              twoPm,
                              style: TextStyle(
                                  color: Colors.black, fontSize: twentyDp),
                            ),
                          ),
                          //dropdown
                          buildDropDown(),
                        ],
                      ),
                    ),
                    GridView.builder(
                      itemBuilder: (context, index) {
                        return buildRoundContainerWithNumber(
                            listOfNumbers[index]);
                      },
                      itemCount: listOfNumbers.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 6,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 2),
                    ),
                  ],
                ),
                buildPaymentButton()
              ],
            ),
          )
        ],
      ),
    );
  }

  //drop down item
  Widget buildDropDown() {
    return Container(
      width: 90,
      height: fortyDp,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(eightDp),
          border: Border.all(width: 0.1, color: Colors.grey.withOpacity(0.1))),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          elevation: 1,
          isExpanded: true,
          style: TextStyle(color: Colors.black, fontSize: sixteenDp),
          underline: Container(),
          items: [
            single,
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value,
                  style: TextStyle(color: Colors.black, fontSize: sixteenDp)),
            );
          }).toList(),
          hint: Text(
            single,
            style: TextStyle(color: Colors.black, fontSize: sixteenDp),
          ),
          onChanged: (String? value) {},
        ),
      ),
    );
  }

  Widget buildRoundContainerWithNumber(number) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: eightDp, vertical: eightDp),
      decoration: BoxDecoration(
          //this is manual for UI purpose
          color: number == 12 ||
                  number == 17 ||
                  number == 22 ||
                  number == 28 ||
                  number == 30
              ? Color(0xFF4736B5)
              : Colors.white,
          border: Border.all(
            width: 1,
            color: Colors.indigoAccent.withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(thirtyDp)),
      child: Center(
          child: Text(
        "$number",
        style: TextStyle(
            color: number == 12 ||
                    number == 17 ||
                    number == 22 ||
                    number == 28 ||
                    number == 30
                ? Colors.white
                : Colors.black45,
            fontWeight: FontWeight.w500,
            fontSize: 20),
      )),
    );
  }

  //payment button
  Widget buildPaymentButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: fortyEightDp,
      margin: EdgeInsets.symmetric(horizontal: sixtyDp, vertical: twentyDp),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => PaymentPage()));
        },
        child: Text(
          makePayment,
        ),
        textColor: Colors.white,
        color: Color(0xFF4736B5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(twentyDp)),
      ),
    );
  }
}
