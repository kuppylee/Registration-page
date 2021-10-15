import 'package:flutter/material.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 20.0,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Image(image: AssetImage('assets/thanks.png',),
                height: 350,
              ),
            ),
    Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 40),
      child: Column(
          children: [
            Text('Thank You!',
              style: TextStyle(
                  color: Colors.black,
                fontSize: 26,
              ),
            ),
            SizedBox(height: 10,),
            Text('Now, welcome to our beautiful app!',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
    ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
            //   child: Text('or login with email',
            //     style: TextStyle(
            //         color: Colors.grey
            //     ),
            //   ),
            // ),
            // // SizedBox(height: 20.0,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 25, 5, 0),
                    child: Container(
                        height: 60,
                        child: ElevatedButton(onPressed: () {
                          // Navigator.pushNamed(context, '/SignUp');
                        },
                          child: Text("Let's go!",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                          ),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(height: 10.0),
        color: Colors.white,
      ),
    );
  }
}
