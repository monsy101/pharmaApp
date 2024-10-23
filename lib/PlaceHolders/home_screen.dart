import 'package:elzeiny_project/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print(screenWidth);

    return Scaffold(
      // backgroundColor: Colors.grey.withOpacity(.1),
      appBar: AppBar(
        title: const Text("Placeholder Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.pink.shade900,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "UNDER WORK W${screenWidth.round()},H${screenHeight.round()}",
              style: const TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print("ouch1");
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/3063/3063143.png",
                                    scale: 6)),
                            width: 115,
                            height: 115,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pinkAccent.withOpacity(0.1),
                                border:
                                Border.all(color: Colors.pink, width: 4),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pinkAccent.withOpacity(.2),
                                    offset: Offset(0, 5),
                                    blurStyle: BlurStyle.inner,
                                  )
                                ]),
                          ),
                          Text(
                            "Shop",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print("ouch");
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/4599/4599163.png",
                                    scale: 6)),
                            width: 115,
                            height: 115,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pinkAccent.withOpacity(0.1),
                                border:
                                Border.all(color: Colors.pink, width: 4),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pinkAccent.withOpacity(.2),
                                    offset: Offset(0, 5),
                                    blurStyle: BlurStyle.inner,
                                  )
                                ]),
                          ),
                          Text(
                            "Insurance",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print("ouch");
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/5696/5696067.png",
                                    scale: 3)),
                            width: 115,
                            height: 115,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pinkAccent.withOpacity(0.1),
                                border:
                                Border.all(color: Colors.pink, width: 4),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pinkAccent.withOpacity(.2),
                                    offset: Offset(0, 5),
                                    blurStyle: BlurStyle.inner,
                                  )
                                ]),
                          ),
                          Text(
                            "Suggestions",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print("ouch");
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Image(
                                image: NetworkImage(
                                    "https://img.pikbest.com/element_our/20230227/bg/170b3172de692.png!sw800",
                                    scale: 4)),
                            width: 115,
                            height: 115,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pinkAccent.withOpacity(0.1),
                                border:
                                Border.all(color: Colors.pink, width: 4),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pinkAccent.withOpacity(.2),
                                    offset: Offset(0, 5),
                                    blurStyle: BlurStyle.inner,
                                  )
                                ]),
                          ),
                          Text(
                            "Basket",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print("ouch");
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/3780/3780452.png",
                                    scale: 5)),
                            width: 115,
                            height: 115,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pinkAccent.withOpacity(0.1),
                                border:
                                Border.all(color: Colors.pink, width: 4),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pinkAccent.withOpacity(.2),
                                    offset: Offset(0, 5),
                                    blurStyle: BlurStyle.inner,
                                  )
                                ]),
                          ),
                          Text(
                            "Orders",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        print("ouch");
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Image(
                                image: NetworkImage(
                                    // TODO: change image
                                    placeHolderImageLink,
                                    scale: 6)),
                            width: 115,
                            height: 115,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pinkAccent.withOpacity(0.1),
                                border:
                                Border.all(color: Colors.pink, width: 4),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pinkAccent.withOpacity(.2),
                                    offset: Offset(0, 5),
                                    blurStyle: BlurStyle.inner,
                                  )
                                ]),
                          ),
                          Text(
                            "PlaceHolder", // TODO: Change label
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}
