import 'package:flutter/material.dart';
import 'package:flutter_20_batch/dummy_screen.dart';
import 'package:flutter_20_batch/image_full.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
Color btnColor= Colors.teal;
String btnText="This is a Button";
List<String> nameList=['Mannan', 'Mamun','Junaeid','Sayma','Fahim'];
List<String> imageList=[
  'assets/image/red.jpg',
  'assets/image/rose.jpg',
  'assets/image/red.jpg',
  'assets/image/rose.jpg',
  'assets/image/red.jpg'
];
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth= MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        centerTitle: true,
        title: Text("First App"),
      ),
      body:
      Center(
        child: Container(
          width: 280,
          child: ListView.builder(
            itemCount: imageList.length,
              itemBuilder: (context,i){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 350,
                      width: 250,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context)=>
                                          ShowFullImage(
                                              imageLink: imageList[i],
                                          name: nameList[i],)));
                            },
                            child: SizedBox(
                              height: 280,
                              child: Image.asset(imageList[i],
                              fit: BoxFit.cover,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(nameList[i]),
                          )
                        ],
                      )
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
