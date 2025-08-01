import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  
  LoginPage({super.key});
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page",
        style: TextStyle(color: Theme.of(context).indicatorColor),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 450,
            color: Colors.white,
            child: Card.outlined(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image(image: AssetImage("images/sbr_chatbot_logo.png"),width: 200,),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: "Your username",
                        suffixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1,
                            color: Theme.of(context).primaryColor
                          )
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Your password",
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1,
                            color: Theme.of(context).primaryColor
                          )
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        String username = usernameController.text;
                        String password = passwordController.text;
                        if(username=="admin" && password=="1234"){
                          Navigator.of(context).pop();
                          Navigator.pushNamed(context, "/bot");
                        }
                      },
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor
                       ),
                       child: Text("Login", style: (
                        TextStyle(fontSize: 22,
                        color: Theme.of(context).indicatorColor)
                      ),)),
                    )
                  ],
                  
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}