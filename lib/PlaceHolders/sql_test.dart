import 'package:flutter/material.dart';

import '../sqldb.dart';

class SqlTest extends StatefulWidget {
  SqlTest({super.key});

  @override
  State<SqlTest> createState() => _SqlTestState();
}

class _SqlTestState extends State<SqlTest> {
  SqlDb sqlDb = SqlDb();

  Future<List<Map>> readData() async {
    List<Map> response = await sqlDb.readData("SELECT * FROM notes");
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sqlTest"),
      ),
      body: Container(
        child: ListView(
          children: [
            MaterialButton(
              onPressed: () async {
                await sqlDb.dropDatabase();
              },
              child: Text("delete database"),
            ),
            FutureBuilder(
              builder:
                  (BuildContext context, AsyncSnapshot<List<Map>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        return Card(
                            child: ListTile(
                          title: Text(snapshot.data![i]['note']),
                        ));
                      });
                }
                return Center(child: CircularProgressIndicator());
              },
              future: readData(),
            ),
            buildColumn()
          ],
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: [
        Center(
          child: MaterialButton(
            color: Colors.red,
            textColor: Colors.white,
            onPressed: () async {
              int response = await sqlDb
                  .insertData("INSERT INTO 'notes' ('note') VALUES ('tests') , ('color') VALUES ('blue')");
              print(response);
            },
            child: const Text("Insert Data"),
          ),
        ),
        Center(
          child: MaterialButton(
            color: Colors.red,
            textColor: Colors.white,
            onPressed: () async {
              List<Map> response =
                  await sqlDb.readData('SELECT * FROM "notes"');
              print("$response");
            },
            child: const Text("Read Data"),
          ),
        ),
        Center(
          child: MaterialButton(
            color: Colors.red,
            textColor: Colors.white,
            onPressed: () async {
              int response = await sqlDb.updateData(
                  "UPDATE 'notes' Set 'note' = 'note six' where id = 6");
              print("$response");
            },
            child: const Text("Update Data"),
          ),
        ),
        Center(
          child: MaterialButton(
            color: Colors.red,
            textColor: Colors.white,
            onPressed: () async {
              int response =
                  await sqlDb.deleteData("DELETE FROM 'notes' WHERE id = 8");
              print("$response");
            },
            child: const Text("Delete Data"),
          ),
        ),
      ],
    );
  }
}
