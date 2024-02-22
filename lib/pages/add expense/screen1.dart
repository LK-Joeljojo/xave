import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Container(
            height: MediaQuery.of(context).size.width / 1.2,
            width: MediaQuery.of(context).size.height / 1.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Septembre',
                        style: TextStyle(
                            color: Color(0xff214FF1),
                            fontFamily: 'Muli',
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        color: Color(0xff9BA5FA),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 280),
                  child: Text(
                    '2019',
                    style: TextStyle(
                      fontFamily: 'Muli',
                      color: Color(0xff9BA5FA),
                    ),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.all(10),
                  color: Colors.blue,
                  // margin: EdgeInsets.only(top: 10),
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: CustomHalfCircleClipper(),
                        child: Container(
                          height: MediaQuery.of(context).size.width / 1.8,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: new BoxDecoration(
                              color: Color(0xffF8F8F8),
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.width / 2)),
                        ),
                      ),
                      Positioned(
                        left: 50,
                        right: 50,
                        top: 45,
                        bottom: 45,
                        child: ClipPath(
                          clipper: CustomHalfCircleClipper(),
                          child: Container(
                            height: 150,
                            width: 20,
                            decoration:  BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    (MediaQuery.of(context).size.width /0.5) / 0.5)),
                            child: Padding(
                              padding: EdgeInsets.only(right: 10,top:50,left: 40),
                              child: Text('0%',
                                style: TextStyle(
                                  fontFamily: 'Muli',
                                  color: Color(0xff214FF1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ),

                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 90,right: 50,top: 150,bottom: 50),
                          child: Text('0/0',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Muli'
                            ),
                          ),
                      )

                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 0, left: 0),
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
          ),
        )
      ],
    ));
  }
}

class CustomHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path =  Path();
    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
