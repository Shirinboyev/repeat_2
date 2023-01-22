
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ControlSlider extends StatefulWidget {
  const ControlSlider({super.key});

  @override
  State<ControlSlider> createState() => _ControlSliderState();
}


class _ControlSliderState extends State<ControlSlider> {
  double valueSlider = 1;
    int? val;
  bool sa = false;
  int scale = 0;
  int saa = 0;
  bool vala = false;
  bool dal = false;
  bool cal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: RadioListTile(
                              value: 1,
                              title: Text('Small'),
                              groupValue: val,
                              onChanged: (v) {
                                saa++;
                                setState(
                                  () {
                                    if (val == 3) scale -=30;
                                    if (val ==2)scale -=20;
                                    scale += 10;
                                    val = 1;
                                  },
                                );
                              })),
                      Expanded(
                          child: RadioListTile(
                              value: 2,
                              title: Text(
                                'Medium',
                                style: TextStyle(fontSize: 13),
                              ),
                              groupValue: val,
                              onChanged: (v) {
                                saa++;
                                setState(
                                  () { 
                                     if (val == 3) scale -=30;
if (val ==1)scale -=10;
                                    scale += 20;
                                    val = 2;
                                  },
                                );
                              })),
                      Expanded(
                        child: RadioListTile(
                            value: 3,
                            title: Text('Large'),
                            groupValue: val,
                            onChanged: (v) {
                              saa++;
                              setState(
                                () {
                                  if (val == 2) scale -=20;
if (val ==1)scale -=10;
                                  scale += 30;
                                  val = 3;
                                },
                              );
                            }),
                      ),
                    ],
                  ),
          ), Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        value: vala,
                        onChanged: (value) {
                          setState(() {
                            vala = !vala;
                            if (vala) {
                              scale += 65;
                            } else
                              scale -= 65;
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                    ),Text('Extra Cheese'),
                    Expanded(
                      child: CheckboxListTile(
                        value: cal,
                        onChanged: (value) {

setState(() {
                            cal = !cal;
                            if (cal) {
                              scale += 65;
                            } else
                              scale -= 65;
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                    ),Text('Onions'),
                    Expanded(
                      child: CheckboxListTile(
                        value: dal,
                        onChanged: (value) {
                          setState(() {
                            dal = !dal;
                            if (dal) {
                              scale += 65;
                            } else
                              scale -= 65;
                          });
                        },
                        activeColor: Colors.blue,
                        
                      ),
                    ),Text('Chicken')
                  ],
                ),
              ),
            Center(
              child: Column(
                children: [
                  Slider(
                    mouseCursor:MouseCursor.defer,
                    thumbColor: Colors.white,
                    activeColor:Colors.red ,
                    inactiveColor: Colors.purple,
                    focusNode:FocusNode(descendantsAreTraversable: false),
                    max: 100,
                    min:1,
                    divisions: 100,
                    label: valueSlider.round().toString(),
                    
                    value: valueSlider,
                    onChanged: (value) {
                      setState(
                      
                        () {  
                              if (cal) {
                                  scale += scale;
                                } else
                                  scale -= scale ;
                                        
                          valueSlider = value;
                        },
                      );
                    },
                  ),
                ],
              ),
            ), Padding(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: Text(
                  'Total sum.$scale',
                  style: TextStyle(fontSize: 30),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: ControlSlider(),));
}


