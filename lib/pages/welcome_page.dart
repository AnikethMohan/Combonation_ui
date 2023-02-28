import 'package:combonation_ui/icons.dart';
import 'package:combonation_ui/pages/home.dart';
import 'package:flutter/material.dart';



class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          title: Text('HELLO Guest!',

          ),
         actions: [
            Container(
               height: 200,
               width: 200,
               decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/Icons/user_image.png'),fit: BoxFit.fitHeight
               )),
             ),

         ],


          backgroundColor: Colors.grey[700],
        ),
      ),
      body: Column(
        children: [
         SizedBox(height: 30,width: 40,),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 150,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=> const SignupPage() ),
              );
            },style: ElevatedButton.styleFrom(primary: Colors.orange[600]), child: Text('Log in/SignUp')

            ),
          ),
          SizedBox(height: 70,),
          ListTile(title: Text('Your Orders',style: TextStyle(fontSize: 23,color: Colors.grey),),leading: Container(height: 40,width: 40,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/Icons/box.png'),fit: BoxFit.fill)),),),
          SizedBox(height: 4,width: 40,),
          ListTile(title: Text('Help and support',style: TextStyle(fontSize: 23,color: Colors.grey),),leading: Container(height: 45,width: 45,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/Icons/support.png'),fit: BoxFit.fill)),),),
          SizedBox(height: 4,width: 40,),
          ListTile(title: Text('Wishlist',style: TextStyle(fontSize: 23,color: Colors.grey),),leading: Container(height: 43,width: 43,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/Icons/tag.png'),fit: BoxFit.fill)),),),
          SizedBox(height: 4,width: 40,),
          ListTile(title: Text('Coupon',style: TextStyle(fontSize: 23,color: Colors.grey),),leading: Container(height: 40,width: 40,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/Icons/discount.png'),fit: BoxFit.fill)),),),
          SizedBox(height: 40,width: 40,),
         Center(
           child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
             Container(alignment: Alignment.center,child: TextButton(onPressed: (){},child: Text('Share',style: TextStyle(fontSize: 20, color: Colors.black38),),),),Text('|'),  Container(alignment: Alignment.center,child: TextButton(onPressed: (){},child: Text('Rate Us',style: TextStyle(fontSize: 20, color: Colors.black38),),),),
           ],),
         ),
          SizedBox(height: 30,width: 30,),
          Container(height: 60,width: 60,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/Icons/combonation.png'),fit: BoxFit.fill)),),


        ],
      ),
        bottomNavigationBar: BottomNavigationBar(

          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.orange[600],

          items: const <BottomNavigationBarItem>[


            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,color: Colors.grey,),
              label: 'home',
            ),
            BottomNavigationBarItem(



              icon: Icon(Icons.auto_awesome_mosaic_outlined),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Build Combo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            ),

          ],
        ),
    );

  }
}
