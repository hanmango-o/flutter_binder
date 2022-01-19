import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_binder/sqflite_bundle/model/dog.dart';
import 'package:flutter_binder/sqflite_bundle/view_model/db_controller.dart';

class DogListView extends StatefulWidget {
  const DogListView({Key? key}) : super(key: key);

  @override
  _DogListViewState createState() => _DogListViewState();
}

class _DogListViewState extends State<DogListView> {
  late List<Dog> _dogs;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Sqflite Bundle',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
        future: DBController.readDogs(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data.runtimeType == Dog) {
            setState(() {
              // _dogs = snapshot.data;
            });
            return Column(
              children: [
                Container(
                  color: Colors.black87,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () async {
                          List<Dog> dataList = await DBController.readDogs();
                          log(dataList.toString());
                          setState(() {
                            _dogs = dataList;
                          });
                        },
                        child: const Text('Read Database'),
                      ),
                      TextButton(
                        onPressed: () => null,
                        child: const Text('Insert Database'),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black87,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () => null,
                        child: const Text('Update Database'),
                      ),
                      TextButton(
                        onPressed: () => null,
                        child: const Text('Delete Database'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(_dogs[index].name),
                        leading: Text(_dogs[index].id.toString()),
                        subtitle: Text(_dogs[index].age.toString() + ' 살'),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: _dogs.length,
                  ),
                ),
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
