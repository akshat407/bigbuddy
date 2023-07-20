import 'package:bigbuddy/login.dart';
import 'package:bigbuddy/signup.dart';
import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("Welcome",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                SizedBox(
                  height: 10,
                ),
                Text("Creating Tomorrow’s World Today",style: TextStyle(fontSize: 20),),
                SizedBox(height: 20,)
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/welcome.jpg"))
              ),
            ),
            Column(
              children: [
              MaterialButton(
                minWidth: double.infinity,
                height: 60,

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
                },
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    
                  ),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Text("Login",style: TextStyle(fontSize: 20),),
                ),
                SizedBox(height: 10,),
                  MaterialButton(
                minWidth: double.infinity,
                height: 60,

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                },
                color: Colors.purple.shade200,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    
                  ),
                  borderRadius: BorderRadius.circular(50)
                  
                ),
                
                child: Text("Signup",style: TextStyle(fontSize: 20),),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
