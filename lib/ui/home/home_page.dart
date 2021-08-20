import 'package:flutter/material.dart';
import 'package:lottery_ui/model/lottery.dart';

import '../../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF4736B5),
        title: Text(lotteryTicket),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF4736B5),
      body: Container(
        margin: EdgeInsets.only(top: thirtyDp),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                width: 1, color: Colors.indigoAccent.withOpacity(0.1)),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(thirtyDp),
                topRight: Radius.circular(thirtyDp))),
        child: buildListItems(lotteryList),
      ),
    );
  }

  Widget buildListItems(List<Lottery> lottery) {
    return Container(
      //  padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(
        top: fortyDp,
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                horizontalTitleGap: 8,
                leading: Image.asset(lottery[index].image),
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Flexible(
                                  child: Text(
                                lottery[index].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: sixDp),
                              child: Text(
                                lottery[index].subtitle,
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 20, top: 12),
                              child: Flexible(
                                  child: Text(
                                lottery[index].price,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo,
                                    fontSize: 16),
                              )),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2),
                              child: Image.asset(lottery[index].flag),
                            ),
                            Text(
                              nextDraw,
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              time,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                trailing: Container(
                  margin: EdgeInsets.only(top: twentyDp),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      playNow,
                    ),
                    textColor: Colors.white,
                    color: Colors.indigo,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(twentyDp)),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                endIndent: twentyDp,
                indent: twentyDp,
              )
            ],
          );
        },
        itemCount: lotteryList.length,
      ),
    );
  }
}
