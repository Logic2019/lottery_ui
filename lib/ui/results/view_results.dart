import 'package:flutter/material.dart';

import '../../constants.dart';

class ViewResults extends StatefulWidget {
  const ViewResults({Key? key}) : super(key: key);

  @override
  _ViewResultsState createState() => _ViewResultsState();
}

class _ViewResultsState extends State<ViewResults> {
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
                  yourResults,
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
                height: 450,
                margin: EdgeInsets.symmetric(horizontal: twentyFourDp),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(twentyFourDp)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: twentyFourDp,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: thirtyDp, vertical: tenDp),
                      child: Text(
                        congrats,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: twentyDp),
                      ),
                    ),
                    Container(
                      height: twoFiftyDp,
                      width: twoFiftyDp,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(twentyFourDp),
                          image: DecorationImage(
                              image: AssetImage("assets/images/win.png"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: thirtyDp),
                      child: Text(
                        youGet,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: twentyDp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
