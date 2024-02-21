import 'package:figma_app/util/lists/drawer_list.dart';
import 'package:flutter/material.dart';

class DrawerOne extends StatefulWidget {
  const DrawerOne({super.key});

  @override
  State<DrawerOne> createState() => _DrawerOneState();
}

late double height;
late double width;

class _DrawerOneState extends State<DrawerOne> {

  @override
  Widget build(BuildContext context) {


    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;


    return SafeArea(
      child: Scaffold(
      
        backgroundColor: const Color(0xff121315),
      
        //DRAWER
        drawer: Container(
          height: height,
          width: width / 1.5,
          decoration: const BoxDecoration(
            color: Color(0xff2e2f32),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  
                  
                const Padding(
                  padding: EdgeInsets.only(left: 14.0, top: 50, bottom: 10),
                  child: Text('Gmail', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
                ),
                  
                divider(),
                  
                //ALL INBOXES
                addItemBox(icon: Icons.all_inbox, name: 'All Inboxes'),
                  
                divider(),
                  
                //INBOX
                addItemBox2(icon: Icons.inbox, name: 'Inbox'),
            
                divider(),
            
                ...List.generate(drawerList.length, (index) => addItemBox(icon: drawerList[index]['icon'], name: drawerList[index]['name'])),
            
                divider(),
            
                //ALL INBOXES
                addItemBox(icon: Icons.add, name: 'Create new'),
            
                divider(),
            
                //INBOX
                addItemBox(icon: Icons.settings_outlined, name: 'Settings'),
              ],
                  
            ),
          ),
        ),
      
      
        //APPBAR
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xff0d0d0f),
          centerTitle: true,
          title: const Text('Random Drawer', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),),
        ),
      
      ),
    );
  }



  //DIVIDER
  Widget divider(){

    return const Divider(color: Color(0xff4f5054), height: 6,);

  }

  //CONTAINER BOX OF LIST
  Widget addItemBox({required IconData icon, required String name}){

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 14),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(icon, color: Colors.white, size: 22,),
          ),
          Expanded(child: Text(name, style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),))
        ],
      ),
    );

  }

  //SELECTED BOX
  Widget addItemBox2({required IconData icon, required String name}){

    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: const BoxDecoration(
        color: Color(0xff5a4645),
        borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50))
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(icon, color: const Color(0xffdf958b), size: 22,),
          ),
          Expanded(child: Text(name, style: const TextStyle(color: Color(0xffdf958b), fontSize: 14, fontWeight: FontWeight.w400),))
        ],
      ),
    );

  }

}
