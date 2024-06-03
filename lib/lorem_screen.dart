import 'package:flutter/material.dart';

class LoremScreen extends StatefulWidget {
  const LoremScreen({super.key});

  @override
  State<LoremScreen> createState() => _LoremScreenState();
}

class _LoremScreenState extends State<LoremScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Lorem Lpsum",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.share_rounded,
                size: 25,
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 400, // Specify the desired height
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 250,
                      child: Image.asset(
                        'assets/images/new.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 250,
                      child: Image.asset(
                        'assets/images/new.png',
                        //height: 300,
                        fit: BoxFit.fitHeight,
                      ),
                    )
                  ],
                ),
              ),
            ),
            //SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Size"),
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Black"),
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                      Icon(Icons.favorite_border)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lorem",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        "\$7999",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      )
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Short black dress",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset('assets/images/star.png'),
                    //child: Text("Short black dress",style: TextStyle(color: Colors.grey,fontSize: 12),)
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim."),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Item details",
                        style: TextStyle(fontSize: 18),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
