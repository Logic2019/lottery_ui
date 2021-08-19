import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
        body: SingleChildScrollView(
          child: Column(
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
                      payment,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              // SizedBox(height: fiftyDp,),
              //time
              Padding(
                padding: const EdgeInsets.symmetric(vertical: fiftyDp),
                child: Center(
                  child: Text(
                    twoPm,
                    style: TextStyle(color: Colors.white, fontSize: twentyDp),
                  ),
                ),
              ),

              buildContainer(),

              SizedBox(
                height: fiftyDp,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: sixDp),
                child: Text(
                  total,
                  style: TextStyle(color: Colors.white, fontSize: eighteenDp),
                ),
              ),

              SizedBox(
                height: thirtyDp,
              ),

              buildPaymentButton()
            ],
          ),
        ));
  }

  Widget buildContainer() {
    return Container(
      // height: twoHundredDp,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: sixteenDp),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(twentyFourDp)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: sixDp),
            child: Text(
              selectNumbers,
              style: TextStyle(color: Colors.black45, fontSize: eighteenDp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: sixDp),
            child: Text(
              numbers,
              style: TextStyle(
                  letterSpacing: 3,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: twentyFourDp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: sixDp),
            child: Text(
              numbersOfDraw,
              style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                  fontSize: sixteenDp),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildRoundContainerWithNumber(1),
              buildRoundContainerWithNumber(2),
              buildRoundContainerWithNumber(3),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: sixDp),
            child: Text(
              possibleWinners,
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: sixteenDp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: tenDp,
          ),
          Text(
            price,
            style: TextStyle(
                color: Colors.black,
                fontSize: twentyDp,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: thirtyDp,
          ),
        ],
      ),
    );
  }

  Widget buildRoundContainerWithNumber(number) {
    return Container(
      width: thirtyDp,
      height: thirtyDp,
      margin: EdgeInsets.symmetric(horizontal: fourDp, vertical: tenDp),
      decoration: BoxDecoration(
          color: Color(0xFF4736B5),
          borderRadius: BorderRadius.circular(twentyFourDp)),
      child: Center(
          child: Text(
        "$number",
        style: TextStyle(color: Colors.white),
      )),
    );
  }

  Widget buildPaymentButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: fortyEightDp),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          paymentNow,
        ),
        textColor: Colors.indigo,
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(twentyDp)),
      ),
    );
  }
}
