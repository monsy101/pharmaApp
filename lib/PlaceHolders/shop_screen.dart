import 'package:flutter/material.dart';
// TODO: Change to StateFull later when adding API

int? itemNumber;

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isDesktopMode = (screenWidth.round() >
        600); // add different view option using gridview instead of list view

    return Scaffold(
      appBar: AppBar(
        actions: [Text("D$isDesktopMode")],
        title: Text("W${screenWidth.round()},H${screenHeight.round()}"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  hintText: 'Search',
                ),
              ),
            ),
            SizedBox(
              height: screenHeight - 20,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) {
                    itemNumber = index;
                    return PharmaItemInstance(
                      index: itemNumber!,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class PharmaItemInstance extends StatelessWidget {
  const PharmaItemInstance({
    super.key,
    required int index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          // enable if you want to check inner limits
          // color: Colors.lightBlueAccent,
          border: Border.all(
              color: Colors.blue, style: BorderStyle.solid, width: 3.5),
          boxShadow: [
            BoxShadow(
              color: Colors.lightBlueAccent.withOpacity(0.2),
              offset: const Offset(0, 4),
            )
          ]),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          const Image(
              image: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/9733/9733525.png")),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              const Text(
                "PlaceHolderItem",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              // TODO: Change after adding data
              Text(
                "Item No.$itemNumber", // TODO: add item description here
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios_sharp),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
