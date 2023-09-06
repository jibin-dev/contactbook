import 'package:contact_book/contact.dart';

import 'package:flutter/material.dart';



class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  late String number;
  TextEditingController numbercontroller=TextEditingController();
  List<String>mylist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => contact(),
                          ));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.green,
                      size: 30,
                    )),
                    SizedBox(width: 30,),
                Text(
                  'Create new contact',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                const SizedBox(
                  width: 40,
                ),

                //save button

                TextButton(
                    onPressed: () {
                      if(
                        numbercontroller.text.isNotEmpty
                      )                     
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => contact(),
                          ));
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Container(
              height: 400,
              width: 450,
              color: Color.fromARGB(210, 82, 147, 84),
              child: Icon(
                Icons.person,
                size: 360,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 480, left: 30),
            child: Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.black,
                      offset: Offset(00, 1))
                ],
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 300),
                //center potion
                child: Icon(
                  Icons.sim_card_outlined,
                  color: Colors.green,
                  size: 45,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 329),
            child: Icon(
              Icons.camera_alt,
              size: 50,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 510),
            child: Text(
              'Saving To',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 535),
            child: Text(
              'MTN GH',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),const
          Padding (
            padding: const EdgeInsets.only(left: 300, top: 505),
            child: Icon(
              Icons.expand_more,
              size: 55,
              color: Colors.green,
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 25),
            child: Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.black,
                      offset: Offset(00, 1))
                ],
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 855, left: 145),
            child: Text(
              'MORE FIELDS',
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 625, left: 45),
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 60,
                ),
                Icon(
                  Icons.phone,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 60,
                ),
                Icon(
                  Icons.email,
                  color: Colors.green,
                ),
              ],
            ),
            //text feild
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 80),
            child: SizedBox(
              height: 50,
              width: 250,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter your first name'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640, left: 80),
            child: SizedBox(
              height: 50,
              width: 250,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'Last name'),
              ),
            ),
          ),
          //phone number+controler
          Padding(
            padding: const EdgeInsets.only(top: 685, left: 80),
            child: SizedBox(
              height: 50,
              width: 250,
              child: TextField(controller: numbercontroller,
              
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'Phone number',
                    errorText: 'value input cheyyada'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 720, left: 80),
            child: SizedBox(
              height: 50,
              width: 150,
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'Mobile'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 755, left: 80),
            child: SizedBox(
              height: 50,
              width: 250,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'Email'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 790, left: 80),
            child: SizedBox(
              height: 50,
              width: 150,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'Home'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 300),
            child: Icon(
              Icons.expand_more,
              size: 55,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 720, left: 190),
            child: Icon(
              Icons.arrow_drop_down_sharp,
              size: 55,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 785, left: 190),
            child: Icon(
              Icons.arrow_drop_down_sharp,
              size: 55,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
