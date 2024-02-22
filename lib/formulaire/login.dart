import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            children: [
              SizedBox(
                height: 170,
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 40),
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Color.fromRGBO(34, 79, 242, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Muli'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, right: 0),
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Color(0xff9BA5FA),
                    fontSize: 25,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Muli'
                  ),
                ),
              ),
            ],
          ),
          Form(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50, right: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        cursorColor: Color.fromRGBO(34, 79, 242, 0.5),
                        style: const TextStyle(
                          color: Color.fromRGBO(34, 79, 242, 1),
                          fontWeight: FontWeight.bold,
                           fontFamily: 'Muli'
                        ),
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(34, 79, 242, 0.5),
                          ),
                          labelText: 'E-mail',
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        cursorColor: Color.fromRGBO(34, 79, 242, 0.5),
                        style: const TextStyle(
                          wordSpacing: 5,
                          textBaseline: TextBaseline.alphabetic,
                          color: Color.fromRGBO(34, 79, 242, 1),
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(34, 79, 242, 0.5),
                          ),
                          labelText: 'Password',
                        ),
                        obscureText: true,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 200, top: 8),
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Color.fromRGBO(34, 79, 242, 0.5),
                              fontFamily: 'Muli'
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(34, 79, 242, 1),
                          ),
                          padding: MaterialStatePropertyAll(EdgeInsets.only(
                              top: 13, left: 135, right: 130, bottom: 13)),
                        ),
                        onPressed: () {},
                        child: Text('Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Muli'
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'or continue with',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(236, 239, 248, 1),
                              ),
                              padding: MaterialStatePropertyAll(EdgeInsets.only(
                                  top: 10, left: 50, right: 40, bottom: 10)),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Facebook',
                              style: TextStyle(
                                color: Color.fromRGBO(34, 79, 242, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 28,
                          ),
                          ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(236, 239, 248, 1),
                              ),
                              padding: MaterialStatePropertyAll(EdgeInsets.only(
                                  top: 10, left: 50, right: 40, bottom: 10)),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Google',
                              style: TextStyle(
                                color: Color.fromRGBO(34, 79, 242, 1),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
