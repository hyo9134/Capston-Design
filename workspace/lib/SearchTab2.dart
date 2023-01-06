import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';


class SchoolNumberSearch extends StatefulWidget {
  const SchoolNumberSearch(this.boardName, this.title, this.content,this.DetailedAffiliation,this.Affiliation,this.BuildingNumber,this.Name,this.PhoneNumber, {Key? key}) : super(key: key);

  final String boardName;
  final String title; // 제목
  final String content; //내용\  // 필드명
  final String DetailedAffiliation; //세부소속
  final String Affiliation; //소속
  final String BuildingNumber; //실번호
  final String Name; //이름
  final String PhoneNumber; //전화번호
  
  @override
  State<SchoolNumberSearch> createState() => _MyAppState(boardName,title,content,DetailedAffiliation,Affiliation,BuildingNumber,Name,PhoneNumber);
}

class _MyAppState extends State<SchoolNumberSearch> {
  String name = "";
  String boardName = "";
  String title = "";
  String content = "";
  String DetailedAffiliation=""; //세부소속
  String Affiliation=""; //소속
  String BuildingNumber=""; //실번호
  String Name=""; //이름
  String PhoneNumber=""; //전화번호


  _MyAppState(this.boardName, this.title, this.content,this.DetailedAffiliation,this.Affiliation,this.BuildingNumber,this.Name,this.PhoneNumber);
  
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xffac6aa0),
            title: Card(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search), hintText: 'Search...'),
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                },
              ),
            )),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection(boardName).snapshots(),
          builder: (context, snapshots) {
            return (snapshots.connectionState == ConnectionState.waiting)
                ? Center(
              child: CircularProgressIndicator(),
            )
                : ListView.builder(
                itemCount: snapshots.data!.docs.length,
                itemBuilder: (context, index) {
                  var data = snapshots.data!.docs[index].data()
                  as Map<String, dynamic>;

                  if (name.isEmpty) {
                    return ListTile(
                      title: Text(
                        data[title]+"(${data[Affiliation]+data[BuildingNumber]})",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        data[PhoneNumber],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    );
                  }
                  if (data[title]
                      .toString()
                      .toLowerCase()
                      .contains(name.toLowerCase())||data[content]
                      .toString()
                      .toLowerCase()
                      .contains(name.toLowerCase())||data[Affiliation]
                      .toString()
                      .toLowerCase()
                      .contains(name.toLowerCase())) {
                    return ListTile(
                      title: Text(
                        data[title]+"(${data[Affiliation]+data[BuildingNumber]})",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        data[PhoneNumber],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    );
                  }

                  return Container();
                });
          },
        ));
  }
}