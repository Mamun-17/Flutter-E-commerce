import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int num =1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.white.withOpacity(.95),
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 17,)),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text('Grocery Deals',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                )
              ],

            ),
            Container(
              height: MediaQuery.of(context).size.height*.25,
              decoration: BoxDecoration(

                image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_mBVwyFkgOqGlP-Zl5zX4SSCGxIsVBFnkyZAYNYZ64ljZSa4ilJg8E8iFkG2D3TY3cGI&usqp=CAU'),
                )
              ),
            ),
            SizedBox(height: 29,),
            Container(
              height: MediaQuery.of(context).size.height*.25*.13,
              width: MediaQuery.of(context).size.width*.15,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(3),
               color: Colors.green
             ),
              child: Center(
                child: Text('1kg',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
            SizedBox(height: 10,),
            Text('\$11.00',
            style: TextStyle(
              letterSpacing: -1,
              color: Colors.deepPurple,
              fontSize: 45,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Text("Green Caulifower",
            style: TextStyle(
              letterSpacing: 2,

              color: Colors.deepPurple,
              fontSize: 20
            ),),
            Container(
              height: MediaQuery.of(context).size.height*.08,
             child: Center(
               child:  Row(
                   children: [
                     SizedBox(width: 104,),
                     FaIcon(
                       FontAwesomeIcons.solidStar,
                       color: Colors.yellow,
                     ),
                     SizedBox(width: 3,),
                     Text("5.0",
                     style: TextStyle(
                       color: Colors.black.withOpacity(.6),
                       fontSize: 20
                     ),),
                     SizedBox(width: 3,),
                     Text("(897 Review)",
                     style: TextStyle(
                       color: Colors.black.withOpacity(.6),
                       fontSize: 20
                     ),)
                   ],
                 ),

             ),
            ),
            SizedBox(height: 3,),
            Text("Quantity",
            style: TextStyle(
              color: Colors.black.withOpacity(.6),
              fontSize: 20
            ),),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if(num>1){
                          num--;
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height*.1,
                      width: MediaQuery.of(context).size.width*.17,

                      decoration: BoxDecoration(
                          color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.deepPurple,width: 1)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: Icon(Icons.minimize_sharp,
                        color: Colors.deepPurple,
                        size: 40,),
                      )
                    ),
                  ),
                Text("${num}kg",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 45,
                      fontWeight: FontWeight.bold
                    ),),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        num++;
                      });
                    },
                    child: Container(
                        height: MediaQuery.of(context).size.height*.1,
                        width: MediaQuery.of(context).size.width*.17,

                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.deepPurple,width: 1)
                        ),
                        child: Center(
                          child: Icon(Icons.add,
                              color: Colors.deepPurple,
                              size: 40,),
                        ),

                    ),
                  ),
                ],
              ),

            Container(
              height: MediaQuery.of(context).size.height*.2*.3,
              width: MediaQuery.of(context).size.width*.13,
              color: Colors.transparent,
              child: Center(
                child: Stack(
                  children: [
                    Center(
                      child: FaIcon(
                        FontAwesomeIcons.basketShopping,
                        size: 29,
                      ),
                    ),
                   Align(
                     alignment: Alignment.topRight,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 13,right: 2),
                       child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 9,
                            child: Center(
                              child: Text("01",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10
                              ),),
                            ),
                          ),
                     ),
                   ),

                  ],
                ),
              )
            ),
            Container(
              height: MediaQuery.of(context).size.height*.08,
              width: MediaQuery.of(context).size.width*.8,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.circular(5)
            ),
              child: Center(
                child: Text("Cart Now",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25
                ),),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*.08,
              width: MediaQuery.of(context).size.width*.8,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Text("Buy Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
