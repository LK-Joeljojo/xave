import 'dart:ffi';

import 'package:flutter/material.dart';

class PageSetting extends StatelessWidget {
  const PageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 280,
            // width: MediaQuery.of(context).size.height/2,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff007AFF), Color(0xff214FF1)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
            child: const Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 60, left: 45),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 60, left: 80),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          side: MaterialStatePropertyAll(
                            BorderSide(width: 2, color: Color(0xff9BA5FA),),
                          ),

                          backgroundColor:
                              MaterialStatePropertyAll(Colors.transparent),
                          padding: MaterialStatePropertyAll(EdgeInsets.only(
                              top: 8, left: 17, right: 17, bottom: 8)),
                        ),
                        onPressed: null,
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                            fontFamily: 'Muli',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 270, bottom: 20),
                    child: Text(
                      'E-mail',
                      style: TextStyle(
                        color: Color(0xff9BA5FA),
                        fontFamily: 'Muli',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 135),
                    child: Text(
                      'lemotiojoeljojo@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Muli',
                      ),
                    ),
                  ),
                ])
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top:40 ,left:50 ),
                child: Text("Change Password",
                style: TextStyle(
                  fontFamily: 'Muli',

                )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:40 ,right:50 ),
                child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_forward,
                      color: Color(0xff9BA5FA),
                    ),
                ),
              ),

            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top:10 ,left:50 ),
                child: Text("Use Face ID",
                    style: TextStyle(
                      fontFamily: 'Muli',

                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:10 ,right:50 ),
                child: Switch(
                    value: false,
                    onChanged: null,
                )

              ),

            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top:25 ,right:250 ),
            child: Text("Currently",
                style: TextStyle(
                  fontFamily: 'Muli',

                )
            ),
          ),
          const Row(
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Padding(
               padding: EdgeInsets.only(left: 60,right: 20),
               child: Text(
                 "S",
                 style: TextStyle(
                   fontFamily: 'Muli',
                   color: Color(0xff214FF1),
                   fontSize: 17,
                 ),

               ),
             ),
             Padding(
               padding: EdgeInsets.only(right: 110),
               child: Text(
                   'Us Dollars',
                 style: TextStyle(
                 fontFamily: 'Muli',
                 color: Color(0xff214FF1),

               )
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 45),
               child: IconButton(
                   onPressed: null,
                   icon: Icon(Icons.arrow_forward,
                   color: Color(0xff9BA5FA),
                   ),
               ),
             )
           ],
          ),
        ],
      ),
    );
  }
}
