import 'package:assignment/journal_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var titleController=TextEditingController();
  var descController=TextEditingController();
  List<JournalModel> listOfTasks=[
    JournalModel(0, "title", "desc", "24")
  ];
  
  @override
  void initState() {
    super.initState();
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Journal Entries"),),
      body: listOfTasks.isNotEmpty?ListView.builder(padding: const EdgeInsets.all(10),
        itemCount:listOfTasks.length,
        itemBuilder: (context, index) { 
        var item=listOfTasks[index];
        return Card(
          color: Colors.purple.shade50,
            child: ListTile(
          title: Text(item.title),
          subtitle: Text(item.desc),
          trailing: GestureDetector(
              onTap:() {
                listOfTasks.removeAt(index);
                setState(() {});
              },
              child: Icon(Icons.delete))

        ));},):Center(child: Text("No Entries Yet"),),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder: (context) =>
          bottomSheet()
          ,);
      },child: Icon(Icons.add),),
    );
  }
  Widget bottomSheet(){
    return Container(
      padding: const EdgeInsets.only(bottom: 100,left: 20,right: 20,top: 30),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Title",
              labelText: "Title",
            ),
          ),
          TextField(
            controller: descController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Content",
              labelText: "Description",
            ),
          ),
          Row(
            spacing: 20,
            children: [
              Expanded(
                child: OutlinedButton(style: OutlinedButton.styleFrom(backgroundColor: Colors.purple.shade50),onPressed: () {
                  titleController.clear();
                  descController.clear();
                  Navigator.pop(context);
                }, child: Text("cancel")),
              ),
              Expanded(
                child: OutlinedButton(style: OutlinedButton.styleFrom(backgroundColor: Colors.purple.shade50),
                    onPressed: () {
                  if(titleController.text.trim().isNotEmpty && descController.text.trim().isNotEmpty){
                    listOfTasks.add(JournalModel(DateTime.now().millisecondsSinceEpoch, titleController.text,descController.text,DateFormat('dd MMM yyyy').format(DateTime.now())));
                    setState(() {});
                  }
                  titleController.clear();
                  descController.clear();
                  Navigator.pop(context);
                }, child: Text("save")),
              )
            ],
          )
        ],
      ),
    );
  }
}

