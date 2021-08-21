import 'package:flutter/material.dart';
import 'package:lottery_ui/model/lottery.dart';
import 'package:lottery_ui/ui/choose_number/choose_number.dart';

import '../../constants.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

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
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(color: Color(0xFF4736B5)),
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.only(top: thirtyDp),
                  child: Text(
                    lotteryTicket,
                    style: TextStyle(fontSize: sixteenDp, color: Colors.white),
                  ),
                ),
                alignment: Alignment.topCenter,
              ),
            ),
            buildListItems(lotteryList),

            /* Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: CustomBottomNavClipper(),
                child: Container(
                  height: 115,
                  padding: EdgeInsets.only(top: 2),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    color: Color(0xFF4736B5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: fortyDp,
                        width: fortyDp,
                        margin: EdgeInsets.only(
                            top: 60, bottom: eightDp, right: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(thirtyDp))),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.ac_unit,
                              color: Color(0xFF4736B5),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: eightDp,right: 30,top: 30),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.home_outlined,
                              color: Colors.white,size: 30,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person_outline,
                              color: Colors.white,size: 36,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),*/
          ],
        ),
      ),

      //NB : Bottom nav implementation might change because images here are not dynamically changed .
      // Thus because its just for UI showcase
      bottomNavigationBar: ClipPath(
        clipper: CustomBottomNavClipper(),
        child: Container(
          height: 115,
          padding: EdgeInsets.only(top: 2),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xFF4736B5),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: fortyDp,
                width: fortyDp,
                margin: EdgeInsets.only(top: 60, bottom: eightDp, right: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(thirtyDp))),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.ac_unit,
                      color: Color(0xFF4736B5),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: eightDp, right: 30, top: 30),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 36,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListItems(List<Lottery> lottery) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(fortyDp),
              topRight: Radius.circular(fortyDp))),
      margin: EdgeInsets.only(
        top: hundredDp,
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                horizontalTitleGap: eightDp,
                minVerticalPadding: 0.1,
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
                              padding: const EdgeInsets.only(top: twentyDp),
                              child: Text(
                                lottery[index].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
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
                              padding: const EdgeInsets.only(
                                  bottom: twentyDp, top: twelveDp),
                              child: Text(
                                lottery[index].price,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo,
                                    fontSize: sixteenDp),
                              ),
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
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ChooseNumber()));
                    },
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
              ),
              // SizedBox(height: 20,),
            ],
          );
        },
        itemCount: lotteryList.length,
      ),
    );
  }
}

//custom shape for bottom navigation items
class CustomBottomNavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 110);
    path.quadraticBezierTo(size.width / 2.2, -30, size.width, 110);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
