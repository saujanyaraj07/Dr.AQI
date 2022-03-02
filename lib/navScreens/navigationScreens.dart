import 'package:flutter/material.dart';

class Nav_A extends StatelessWidget {
  const Nav_A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1646191933927-c67bb9cb0f66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 200,
                ),
                Text(
                  "Real-Time AQi Monitoring ",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  child: Text(
                    'Next ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
