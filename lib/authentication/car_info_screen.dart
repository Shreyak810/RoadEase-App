import 'package:flutter/material.dart';

class CarInfoScreen extends StatefulWidget {


  @override
  State<CarInfoScreen> createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen> {
  TextEditingController carModelEditingController=TextEditingController();
  TextEditingController carNumberEditingController=TextEditingController();
  TextEditingController carColorEditingController=TextEditingController();

  List<String> carTypeList=["uber-x","uber-go","bike"];
  String? selectedCarType;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 24,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/logo1.jpg"),
              ),

              const SizedBox(height: 10,),

              const Text(
                "Write Car Details",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextField(
                controller: carModelEditingController,
                style:const TextStyle(
                  color: Colors.grey,
                ),
                decoration: const InputDecoration(
                  labelText: "Car Model",
                  hintText: "Car Model",

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ),

              TextField(
                controller: carNumberEditingController,
                style:const TextStyle(
                  color: Colors.grey,
                ),
                decoration: const InputDecoration(
                  labelText: "Car Number",
                  hintText: "Car Number",

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ),

              TextField(
                controller: carColorEditingController,

                style:const TextStyle(
                  color: Colors.grey,
                ),
                decoration: const InputDecoration(
                  labelText: "Car Color",
                  hintText: "Car Color",

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ),


              const SizedBox(height: 10,),

              DropdownButton(
                iconSize: 20,
                dropdownColor: Colors.white24,
                hint:const  Text(
                  "Please choose Car Type",
                   style: TextStyle(
                     fontSize: 14.0,
                     color: Colors.grey,
                   ),
                ),
                value:selectedCarType,
                onChanged: (newValue)
                {
                  setState(() {
                    selectedCarType=newValue.toString();
                  });
                },
                items: carTypeList.map((car){
                  return DropdownMenuItem(
                    child:Text(
                      car,
                      style: const TextStyle(color:Colors.grey),
                    ),
                    value:car,
                  );
              }).toList(),
              ),

              const SizedBox(height: 20,),

              //When the driver click on create account we would send to it carinfo screen
              ElevatedButton(
                onPressed: ()
                {
                  Navigator.push(context,MaterialPageRoute(builder: (c)=>CarInfoScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreenAccent,
                ),

                child: const Text(
                  "Save Now",
                  style: TextStyle(
                    color:Colors.black54,
                    fontSize: 18.0,

                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
