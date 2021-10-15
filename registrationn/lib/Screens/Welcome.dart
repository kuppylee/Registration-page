import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            Text('Welcome',
              style: TextStyle(
                  color: Colors.black
              ),
            ),
            SizedBox(height: 10,),
            Text('Please login or signup to continue using our app.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Center(
              child: Image(image: AssetImage('assets/welcome.png'),
                height: 200,
              ),
            ),
            // SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 30),
              child: Text('Enter via social networks',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60,
                    // width: 165,
                    color: Colors.lightBlueAccent,
                    child: TextButton(
                      onPressed: () {},
                      child: Image(image: AssetImage('assets/twitter.png'),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 5,),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60,
                    // width: 165,
                    color: Colors.blue[900],
                    child: TextButton(
                      onPressed: () {},
                      child: Image(image: AssetImage('assets/facebook.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
              child: Text('or login with email',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            ),
            // SizedBox(height: 20.0,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 25, 5, 0),
                    child: Container(
                        height: 60,
                        child: ElevatedButton(onPressed: () {
                          Navigator.pushNamed(context, '/SignUp');
                        },
                          child: Text('Sign Up',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
                TextButton(onPressed: () {
                  Navigator.pushNamed(context, '/LoginPage');
                },
                  child: Text('Login',
                    style: TextStyle(
                        color: Colors.blue
                    ),
                  ),
                )
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

