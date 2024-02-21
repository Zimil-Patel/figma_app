import 'package:figma_app/util/lists/drawer_list.dart';
import 'package:flutter/material.dart';

class DrawerTwo extends StatefulWidget {
  const DrawerTwo({super.key});

  @override
  State<DrawerTwo> createState() => _DrawerTwoState();
}

late double width;

class _DrawerTwoState extends State<DrawerTwo> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      //DRAWER
      drawer: Drawer(
        width: width / 1.15,
        shape: const RoundedRectangleBorder(),
        child: Column(
          children: [

            //DRAWER HEADER
            SizedBox(
              height: 270,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xff9a8dda),
                      Color(0xffd5a0f9)
                    ]
                  )
                ),
                  child: Column(
                    children: [

                      //TWO MINI AVATAR
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          addAvatar(),
                          addAvatar(),
                        ],
                      ),

                      //ONE MAIN AVATAR
                      addAvatar2(),

                      //NAME AND EMAIL
                      const Text('Juliet Gushiken', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                      const Text('Juliet2310@icloud.com', style: TextStyle(color: Color(0xff7166a2) ,fontSize: 12, fontWeight: FontWeight.w500),),
                    ],
                  ),
              ),
            ),

            Expanded(
              flex: 3,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(drawerList2.length, (index) => addItemBox(icon: drawerList2[index]['icon'], name: drawerList2[index]['name'])),
                    ],
                  ),
                )
            )

          ],
        ),
      ),

      //APPBAR
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff2f2f2f),
        centerTitle: true,
        title: const Text(
          'Drawer',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }



  //Circular avatar
  Widget addAvatar(){

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(100)
      ),
      child: const CircleAvatar(
        radius: 14,
        backgroundImage: AssetImage('asset/images/profiles/avatar1.png'),
      ),
    );

  }

  //Circular avatar2
  Widget addAvatar2(){

    return const CircleAvatar(
      radius: 50  ,
      backgroundImage: AssetImage('asset/images/profiles/avatar2.png'),
    );

  }

  //CONTAINER BOX OF LIST
  Widget addItemBox({required IconData icon, required String name}){

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
      child: SizedBox(
        width: 150,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(icon, size: 22, color: Colors.grey,),
            ),
            Text(name, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
          ],
        ),
      ),
    );

  }
}
