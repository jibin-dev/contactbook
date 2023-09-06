import 'package:contact_book/add.dart';
import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    
      backgroundColor: Color.fromARGB(255, 241, 239, 239),
      body: Stack(
        children: [
          Container(
            height: 115,
            width: 420,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 40, left: 30, right: 100, bottom: 20),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.mic),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Serch Contact ',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 125,
            ),
            child: Container(
              height: 90,
              width: 420,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'My profile',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  Icon(Icons.arrow_forward_ios_sharp)
                ],
              ),
            ),
          ),
          // contact field
          Padding(
            padding: const EdgeInsets.only(
              top: 225,
            ),
            child: Container(
              height: 800,
              width: 420,
              color: Colors.white,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 350, top: 60),
            child: Icon(Icons.menu),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250,left: 40),
            child: ListView.separated( separatorBuilder: (
              context, index) =>Divider(height: 0,
              
              thickness: 0,),
              itemCount: imgList.length,
              itemBuilder: ((context,index){
                return ListTile(title: Text(mylist[index]),
                leading: CircleAvatar(backgroundImage: AssetImage(imgList[index]),),);
          
              }),
              reverse: false
              ,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 800, left: 320),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => add()));
                },
                icon: Icon(
                  Icons.add_ic_call_sharp,
                  size: 45,
                )),
          ),Padding(
            padding: const EdgeInsets.only(top: 250,left: 20),
            child: Text('My Favourites',style: TextStyle(fontSize: 20),),
          ),Padding(
            padding: const EdgeInsets.only(top: 470,left: 20),
            child: Text('A',style: TextStyle(fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700,left: 20),
            child: Text('B',style: TextStyle(fontSize: 20),),
          )
        ],
      ),
    );
  }
}
final List mylist =['Addai','Bompong','Akua','Addai','Adiza Salifu','Akua','Ambonsah','Bisa K Dei','Bompong','Bua Beng'];
List imgList=['IMG/Mask2.png','IMG/Mask1.png','IMG/Mask2.png','IMG/Mask1.png','IMG/Mask2.png','IMG/Mask2.png','IMG/Mask2.png','IMG/Mask1.png','IMG/Mask1.png','IMG/Mask1.png'
];