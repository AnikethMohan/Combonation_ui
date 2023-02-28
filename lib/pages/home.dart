import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool value1 = true;
  String _name = '';
  String email = '';
  String password = '';
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
               height: 200,
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  'Sign up!',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 250,
                child: TextFormField(

                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3,color:  Colors.white24)
                    ),
                    hintText: 'Name',
                  ),
                  onChanged: (value){
                    setState(() {
                      _name=value;
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 250,
                child: TextFormField(

                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3,color: Colors.white24)
                    ),
                    hintText: 'Email',
                  ),
                  onChanged: (value){
                    setState(() {
                      email=value;
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 250,
                child: TextFormField(

                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3,color: Colors.white24)
                    ),
                    hintText: 'Password',
                  ),
                  onChanged: (value){
                    setState(() {
                      password=value;
                    });
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 250,
                child: TextFormField(

                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3,color:  Colors.white24)
                    ),
                    hintText: 'Confirm password',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 70,
                child: Checkbox(value: value1, onChanged: (bool?value){setState(() {
                  value = value1;

                });},

                ),

              ),
              Container(
                height:50,
                width: 150,

                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(primary: Colors.orange[600]), child: Text('Register')

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

