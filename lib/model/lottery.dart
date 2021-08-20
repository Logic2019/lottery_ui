import 'package:lottery_ui/constants.dart';

class Lottery {
  final image;
  final title;
  final subtitle;
  final price;
  final flag;
  final time;

  Lottery(
      {this.image,
      this.title,
      this.subtitle,
      this.price,
      this.flag,
      this.time});
}

//dummy list for  UI testing
List<Lottery> lotteryList = [
  Lottery(
      image: 'assets/images/im.png',
      title: superBall,
      subtitle: jackPort,
      price: lotteryPrice,
      flag: 'assets/images/usa.png',
      time: time),
  Lottery(
      image: 'assets/images/im.png',
      title: superBall,
      subtitle: jackPort,
      price: lotteryPrice,
      flag: 'assets/images/canada.png',
      time: time),
  Lottery(
      image: 'assets/images/im.png',
      title: superBall,
      subtitle: jackPort,
      price: lotteryPrice,
      flag: 'assets/images/britain.png',
      time: time),
  Lottery(
      image: 'assets/images/im.png',
      title: superBall,
      subtitle: jackPort,
      price: lotteryPrice,
      flag: 'assets/images/china.png',
      time: time),
  Lottery(
      image: 'assets/images/im.png',
      title: superBall,
      subtitle: jackPort,
      price: lotteryPrice,
      flag: 'assets/images/france.png',
      time: time),
  /*  Lottery(
      image: 'assets/images/im.png',
      title: superBall,
      subtitle: jackPort,
      price: lotteryPrice,
      flag: 'assets/images/canada.png',
      time: time),*/
];
