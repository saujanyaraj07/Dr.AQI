import 'package:flutter/material.dart';

class Nav_A extends StatelessWidget {
  const Nav_A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),
          Container(
            height: 369,
            width: 429,
            child: Image.asset(
              'assets/images/next1.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 450,
            left: 40,
            child: Text(
              "Real-Time AQI Monitoring",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Positioned(
            left: 130,
            top: 700,
            child: MaterialButton(
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Nav_B()),
                );
              },
              child: Text(
                "Next",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Nav_B extends StatelessWidget {
  const Nav_B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover ,
          ),
          // Container(
          //   height: 369, 
          //   width: 429,
          //   child: Image.asset(
          //     'assets/images/next1.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Positioned(
            top: 450,
            left: 125,
            child: Text(
              "Mitigation",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Positioned(
            left: 130,
            top: 700,
            child: MaterialButton(
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Nav_C()),
                );
              },
              child: Text(
                "Next",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Nav_C extends StatelessWidget {
  const Nav_C({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),
          // Container(
          //   height: 369,
          //   width: 429,
          //   child: Image.asset(
          //     'assets/images/next1.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Positioned(
            top: 450,
            left: 125,
            child: Text(
              "Mitigation",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Positioned(
            left: 130,
            top: 700,
            child: MaterialButton(
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              color: Colors.black,
              onPressed: () {},
              child: Text(
                "I agree",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
