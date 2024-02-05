import 'package:flutter/material.dart';
import '../ProductImplements.dart';
import '../StyledText.dart';

class Implements extends StatelessWidget {
  const Implements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade600,
            title: const Text(
              'MIS IMPLEMENTOS',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            bottom: TabBar(
              tabs: const [
                Tab(child: StyledText(text: 'Bancos', style: TextStyle())),
                Tab(child: StyledText(text: 'Auto cargo', style: TextStyle())),
                Tab(
                    child: StyledText(
                        text: 'Maquina de discos', style: TextStyle())),
                Tab(child: StyledText(text: 'Elasticos', style: TextStyle())),
                Tab(
                    child:
                        StyledText(text: 'Equipo cardio', style: TextStyle())),
              ],
              indicatorColor: Colors.purple.shade500,
              indicatorWeight: 2.0,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              labelStyle:
                  const TextStyle(fontSize: 10.5, fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: const TextStyle(fontSize: 11.0),
              splashBorderRadius: BorderRadius.circular(20),
            ),
          ),
          body: const TabBarView(children: [
            ProductImplements(seletedType: "Banks"),
            ProductImplements(seletedType: "Self-Loading"),
            ProductImplements(seletedType: "Disc machines"),
            ProductImplements(seletedType: "Elastic"),
            ProductImplements(seletedType: "Cardio equipment"),
          ]),
        ));
  }
}
