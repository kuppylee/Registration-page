import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Column(
          children: [
            Text('Sign Up',
              style: TextStyle(
                  color: Colors.black
              ),
            ),
            SizedBox(height: 10,),
            Text('Please Sign Up to continue using our app.',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
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
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 10),
              child: Text('or sign up with email',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    child: TextField(
                      decoration: InputDecoration(fillColor: Colors.white, hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    child: TextField(
                      decoration: InputDecoration(fillColor: Colors.white, hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 45, 5, 5),
                    child: Container(
                        height: 60,
                        child: ElevatedButton(onPressed: () {
                          Navigator.pushNamed(context, '/LoginPage');
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
                Text("Already have an account?",
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

