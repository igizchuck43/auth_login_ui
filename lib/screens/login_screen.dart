import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Login"
        ),
      ),
      body: Container(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints){
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: Container(
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.blueAccent,
                          height: MediaQuery.of(context).size.height *0.30,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Theme.of(context).primaryColor,
                                  radius: 40,
                                    child: Icon(
                                      Icons.person,
                                      size: 50,
                                    ),
                                ),
                                Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: Column(
                              children: [
                                TextField(
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                    hintText: "Enter your email",
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 3,
                                      ),
                                    ),
                                    prefixIcon: IconTheme(
                                      data: IconThemeData(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      child: Icon(Icons.email),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  autocorrect: true,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Enter your password",
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 3,
                                      ),
                                    ),
                                    prefixIcon: IconTheme(
                                      data: IconThemeData(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      child: Icon(
                                        Icons.lock,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Center(
                                    
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
