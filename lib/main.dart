import'package:flutter/material.dart';
// import 'package:repeat_2/next,avtomatic,image.dart';
void main(){
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});
  @override
  State<MyWidget> createState() => _MyWidgetState();
  
}
class _MyWidgetState extends State<MyWidget> {

  TextEditingController controller = TextEditingController();

// int search (String txt){
  List names = [
  'apple',
  'banana',
  'cherry',
  'pear',
  'kiwi',
  'lemon',
  'grape',
  'orange',
  'mango',
  'pineapple',
 
  ];
       
       List  pictures =
       [
        'image/apple.png',
        'image/banana.png',
        'image/cherry.png',
        'image/pear.png',
        'image/kiwi.png',
        'image/lemon.png',
        'image/grape.png',
        'image/orange.png',
        'image/mango.png',
        'image/pinapple.png',
        ];
      //  return names.indexOf(txt.toLowerCase());
// }
        String find = 'topilmadi';
        int s = 0;
  String  result = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Shirinboyev'),
        ),
        body: 
           Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 100,
                child: SingleChildScrollView(
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.all(30),
                    child: TextField(
                      keyboardType: TextInputType.streetAddress,
                      keyboardAppearance:Brightness.dark , 
                      controller: controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: (){
                            int a =s;
                            for (int i = 0; i < names.length; i++){
                               if(names[i].toLowerCase()==controller.text.toLowerCase()){
                                s= i;
                                a++;
                               }
                               else result = 'toplimadi';
                            
                
                            }                        
                                                 setState(() {
                            });
                          }, 
                        icon: Icon(Icons.search_rounded))
                      ),
                    ),
                  ),
                ),
              ),Container(
                height: 220,
                child: Image.asset(pictures[s]), 
                ),
              ],
            ),
            
        ),
        );
  }
}