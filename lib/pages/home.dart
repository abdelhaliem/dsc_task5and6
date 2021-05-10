import '../toolsImages.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List lest = ["حدد الكمية", '1', '2', '3', "4", "5", "6"];

  // To Add a new meal ,go to : class ToolsImage.dart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Food App",
            style: TextStyle(
              color: ToolsImage.mainColor,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          shadowColor: Colors.red,
          elevation: 3,
        ),
        body: Scrollbar(
            radius: Radius.circular(20),
            thickness: 10,
            // To Add a new meal ,go to : class ToolsImage.dart
            child: ListView.builder(
              itemCount: ToolsImage.images.length,
              itemBuilder: (ctx, index) => Card(
                color: ToolsImage.mainColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                shadowColor: Colors.white,
                elevation: 3,
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  height: 280,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black,
                                          offset: Offset(2, 2))
                                    ],
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        ToolsImage.images[index],
                                      ),
                                      alignment: Alignment.center,
                                      fit: BoxFit.scaleDown,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  textCardTitle("Food Name:"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textCard(ToolsImage.namefoods[index]),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              textCardTitle("Food Price:"),
                              SizedBox(
                                height: 10,
                              ),
                              textCard("${ToolsImage.prise[index]} ج.م"),
                              Text("اضغط تحديد الكمية",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white),
                                child: DropdownButton(
                                  isExpanded: true,
                                  focusColor: Colors.white,
                                  autofocus: true,
                                  style: TextStyle(
                                    color: ToolsImage.mainColor,
                                  ),
                                  items: lest.map((corse) {
                                    return DropdownMenuItem(
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                corse,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              indent: 5,
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      ),
                                      value: corse,
                                    );
                                  }).toList(),
                                  onChanged: (value) => setState(() {
                                    ToolsImage.listSelcted[index] = value;
                                  }),
                                  value: ToolsImage.listSelcted[index],
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            )));
  }

  Text textCard(String title) {
    return Text(
      title,
      style: TextStyle(
          color: ToolsImage.nColor,
          fontSize: 35,
          fontWeight: FontWeight.w600,
          shadows: [
            Shadow(
              color: Colors.black,
              offset: Offset(2, 2),
            )
          ]),
    );
  }

  Text textCardTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}
