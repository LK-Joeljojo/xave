import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            children: [
              SizedBox(
                height: 200,
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 40),
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontFamily: 'Muli',
                    color: Color.fromRGBO(34, 79, 242, 0.5),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, right: 0),
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Color.fromRGBO(34, 79, 242, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
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
                          fontSize: 15,
                          color: Color.fromRGBO(34, 79, 242, 1),
                          fontWeight: FontWeight.bold,
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
                        style: const TextStyle(
                          wordSpacing: 5,
                          textBaseline: TextBaseline.alphabetic,
                          fontSize: 15,
                          color: Color.fromRGBO(34, 79, 242, 1),
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(34, 79, 242, 0.5),
                          ),
                          labelText: 'Set Password',
                        ),
                        obscureText: true,
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
                        child: Text('Register',
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
