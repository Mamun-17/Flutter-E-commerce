import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../Models/model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
            backgroundColor: Colors.white.withOpacity(.95),
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white.withOpacity(.95),
                title: Padding(
                  padding: const EdgeInsets.only(left:.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10,right: 7),
                        child: Icon(Icons.location_on_outlined,
                          color: Colors.black,),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Current Location',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),),
                              Icon(Icons.arrow_drop_down_outlined,
                                color: Colors.black,)
                            ],
                          ),
                          Text('Dhaka,Uttara',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12

                            ),)

                        ],
                      )
                    ],
                  ),
                ),
                actions: [
                  Padding(
                      padding: const EdgeInsets.only(top:18,right: 10),
                      child: FaIcon(FontAwesomeIcons.bell,color: Colors.black,)
                  )
                ],
                bottom: PreferredSize(
                  preferredSize: Size(double.infinity,90),
                  child: Container(
                    height: MediaQuery.of(context).size.height*.09,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            elevation: 10,
                            color: Colors.teal,
                            shadowColor: Colors.black54,
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              height: MediaQuery.of(context).size.height*.09*.76,
                              width: MediaQuery.of(context).size.width*.16,
                              child: Center(
                                child: FaIcon(
                                    FontAwesomeIcons.alignLeft
                                ),
                              ),
                              // color: Colors.black,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),

                              ),
                            ),
                          ),
                          SizedBox(width: 8,),
                          Padding(
                            padding: const EdgeInsets.only(top: 5
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height*.09*.8,
                              width: MediaQuery.of(context).size.width*.6
                              ,
                              //color: Colors.red,
                              child: TextField(

                                decoration: InputDecoration(
                                    hintText: 'search for product',

                                    prefixIcon: Icon(Icons.search),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Colors.grey
                                        )
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blue)
                                    )
                                ),
                              ),
                            ),
                          ),SizedBox(width: 8,),
                          Material(
                            elevation: 10,
                            color: Colors.teal,
                            shadowColor: Colors.black54,
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              height: MediaQuery.of(context).size.height*.09*.76,
                              width: MediaQuery.of(context).size.width*.16,
                              child: Center(
                                child: FaIcon(
                                    FontAwesomeIcons.sliders
                                ),
                              ),
                              // color: Colors.black,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),

                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),

                )
            ),

            body:Container(
              height: MediaQuery.of(context).size.height*1,
              width: MediaQuery.of(context).size.width*1,
              child:Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*.721,
                        child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height*.3,
                                    width: MediaQuery.of(context).size.width*1,
                                    color: Colors.transparent,
                                    child: ListView.builder(
                                        itemCount: 3,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context,index) {
                                          return Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(

                                                  height: MediaQuery.of(context).size.height*.3*.8,
                                                  width: MediaQuery.of(context).size.width*.8,

                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(image: NetworkImage('https://previews.123rf.com/images/kzenon/kzenon1411/kzenon141100681/33791668-family-selecting-fruits-and-vegetables-while-grocery-shopping-in-supermarket.jpg'),
                                                          fit: BoxFit.cover),
                                                      borderRadius: BorderRadius.circular(12)
                                                  ),

                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        height: MediaQuery.of(context).size.height*.3*.8,
                                                        width: MediaQuery.of(context).size.width*.8,

                                                        decoration: BoxDecoration(
                                                            color: Colors.black.withOpacity(.3),

                                                            borderRadius: BorderRadius.circular(12)
                                                        ),

                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 12,bottom: 12),
                                                        child: Align(
                                                          alignment: Alignment.bottomLeft,
                                                          child: Text('Get 20% off',
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 24
                                                            ),),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                              ),
                                            ),
                                          );
                                        }
                                    )
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height*.2,
                                  child: ListView.builder(
                                      itemCount: 4,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (con,index){
                                        Productname productname=dummydata[index];
                                        return Container(
                                          height: MediaQuery.of(context).size.height*.2,
                                          width: MediaQuery.of(context).size.width*.333,

                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 55,
                                                backgroundImage: NetworkImage('${productname.image}'),
                                              ),
                                              SizedBox(height: 8,),
                                              Opacity(
                                                opacity: .3,
                                                child: Container(
                                                  height: MediaQuery.of(context).size.height*.2*.11,
                                                  width: MediaQuery.of(context).size.width*.333*.47,

                                                  decoration: BoxDecoration(
                                                      color: Colors.white,

// color: Colors.teal,
                                                      image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHfz0tzBdwnvHPAAJLU242amo5MBBOFrd4wDTc7fv0OxFololmKI7roGwNginwT2Wsl4o&usqp=CAU'),
                                                          fit: BoxFit.fitWidth
                                                      )
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 8,),
                                              Text('${productname.name}',
                                                style: TextStyle(
                                                    fontSize: 17
                                                ),)


                                            ],

                                          ),
                                        );
                                      }
                                  ),
                                ),
                                Container(

                                    height: MediaQuery.of(context).size.height*.38,


                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        SizedBox(height: 16,),
                                        Text("Today's Grocery Deals",
                                          style: TextStyle(
                                              color: Colors.black.withOpacity(.8),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        SizedBox(height: 10,),
                                        Container(
                                          height: MediaQuery.of(context).size.height*.31,
                                          child: GridView.builder(
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: dummyProducts.length,
                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,


                                            ),
                                            itemBuilder: (con,index){
                                              ProductModel productModel = dummyProducts[index];
                                              return  Container(
                                                  height: MediaQuery.of(context).size.height*.3*.5,
                                                  width: MediaQuery.of(context).size.width*.3,

                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border(top: BorderSide(color: Colors.grey.withOpacity(.5)),left:BorderSide(color: Colors.grey.withOpacity(.5)) )
                                                  ),
                                                  child:Stack(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Container(
                                                            height:MediaQuery.of(context).size.height*.3*.5*.45,
                                                            decoration: BoxDecoration(
                                                              // color: Colors.red,
                                                                image: DecorationImage(image: NetworkImage('${productModel.image}'))
                                                            ),

                                                          ),
                                                          Text("${productModel.name}",
                                                            style: TextStyle(
                                                              fontSize: 17,
                                                            ),),
                                                          SizedBox(height: 20,),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 5,right: 5),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    Text('${productModel.oldPrice}',
                                                                      style: TextStyle(
                                                                          fontSize: 12
                                                                      ),),
                                                                    SizedBox(width: 3,),
                                                                    Text('${productModel.currentPrice}',
                                                                      style: TextStyle(
                                                                          fontSize: 12
                                                                      ),)
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    FaIcon(
                                                                      FontAwesomeIcons.solidStar,
                                                                      color: Colors.yellow,
                                                                      size: 12,
                                                                    ),
                                                                    SizedBox(width: 3,),
                                                                    Text('${productModel.rating}')
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 8,top:6),


                                                        child: Align(
                                                          alignment: Alignment.topRight,
                                                          child: GestureDetector(

                                                            onTap: (){
                                                              if(productModel.isFavourite==false){
                                                                productModel.isFavourite=true;

                                                              }else{
                                                                productModel.isFavourite=false;
                                                              }
                                                              setState(() {

                                                              });
                                                            },

                                                            child: productModel.isFavourite==true? FaIcon(
                                                              FontAwesomeIcons.solidHeart,
                                                              color: Colors.red,
                                                              size: 18,
                                                            ) : FaIcon(
                                                              FontAwesomeIcons.heart,
                                                              color: Colors.grey,
                                                              size: 18,
                                                            ),

                                                          ),
                                                        ),
                                                      )
                                                    ],

                                                  )
                                              );
                                            },),
                                        ),
                                      ],
                                    )
                                ),
                                SizedBox(height: 8,),




                                Container(
                                  height: MediaQuery.of(context).size.height*.25,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage('https://pbs.twimg.com/media/EcLwjeXXsAUd6cD.jpg:large'),
                                          fit: BoxFit.cover)
                                  ),
                                ),
                                Container(
                                    height: MediaQuery.of(context).size.height*.21,
                                    color: Colors.white,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Text('Grocery Member Deals',
                                            style: TextStyle(
                                                color: Colors.black.withOpacity(.7),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20

                                            ),),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context).size.height*.15,
                                          decoration: BoxDecoration(
                                            border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(.5)))
                                          ),
                                          child: GridView.builder(
                                              physics: NeverScrollableScrollPhysics(),

                                              itemCount: 3,

                                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 3
                                              ),
                                              itemBuilder: (BuildContext context, int index) {
                                                ProductModel pro=prototype[index];


                                                return
                                                  Container(
                                                      height: MediaQuery.of(context).size.height*.15,
                                                      width: MediaQuery.of(context).size.width*.3,

                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          border: Border(top: BorderSide(color: Colors.grey.withOpacity(.5)),left:BorderSide(color: Colors.grey.withOpacity(.5)) )
                                                      ),
                                                      child:Stack(
                                                        children: [
                                                          Column(
                                                            children: [
                                                              Container(
                                                                height:MediaQuery.of(context).size.height*.3*.5*.45,
                                                                decoration: BoxDecoration(
                                                                  // color: Colors.red,
                                                                    image: DecorationImage(image: NetworkImage('${pro.image}'))
                                                                ),

                                                              ),
                                                              Text("${pro.name}",
                                                                style: TextStyle(
                                                                  fontSize: 17,
                                                                ),),
                                                              SizedBox(height: 20,),
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 5,right: 5),
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Text('${pro.oldPrice}',
                                                                          style: TextStyle(
                                                                              fontSize: 12
                                                                          ),),
                                                                        SizedBox(width: 3,),
                                                                        Text('${pro.currentPrice}',
                                                                          style: TextStyle(
                                                                              fontSize: 12
                                                                          ),)
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons.solidStar,
                                                                          color: Colors.yellow,
                                                                          size: 12,
                                                                        ),
                                                                        SizedBox(width: 3,),
                                                                        Text('${pro.rating}')
                                                                      ],
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 8,top:6),
                                                            child: Align(
                                                              alignment: Alignment.topRight,
                                                              child: GestureDetector(

                                                                onTap: (){
                                                                  if(pro.isFavourite==false){
                                                                    pro.isFavourite=true;

                                                                  }else{
                                                                    pro.isFavourite=false;
                                                                  }
                                                                  setState(() {

                                                                  });
                                                                },

                                                                child: pro.isFavourite==true? FaIcon(
                                                                  FontAwesomeIcons.solidHeart,
                                                                  color: Colors.red,
                                                                  size: 18,
                                                                ) : FaIcon(
                                                                  FontAwesomeIcons.heart,
                                                                  color: Colors.grey,
                                                                  size: 18,
                                                                ),

                                                              ),
                                                            ),
                                                          )
                                                        ],

                                                      )
                                                  );
                                              }
                                          ),
                                        ),
                                      ],
                                    )
                                ),

                              ],
                            )
                        ),
                      ),

                      Container(

                        height: MediaQuery.of(context).size.height*.065,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(top: BorderSide(color: Colors.black.withOpacity(.1),width: 1))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13,right: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(

                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.house,
                                        color: Colors.grey,
                                      ),
                                      Text('Home',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(.8)
                                      ),)
                                    ],
                                  ),
                                  SizedBox(width: 45,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.list,
                                        color: Colors.grey,
                                      ),
                                      Text('Orders',
                                          style: TextStyle(
                                              color: Colors.black.withOpacity(.8)
                                          )
                                      )
                                    ],
                                  ),

                                ],
                              ),

                              Row(

                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.heart,
                                        color: Colors.grey,
                                      ),
                                      Text('Wishlist',
                                          style: TextStyle(
                                              color: Colors.black.withOpacity(.8)
                                          )
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 45,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.person,
                                        color: Colors.grey,
                                      ),
                                      Text('Profile',
                                          style: TextStyle(
                                              color: Colors.black.withOpacity(.8)
                                          )
                                      )
                                    ],
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      ),


                    ],



                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 21),
                      child: CircleAvatar(
                        radius: 35,
                        child: FaIcon(
                          FontAwesomeIcons.cartShopping,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  )
                ],
              )

              /*SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height*.3,
                          width: MediaQuery.of(context).size.width*1,
                          color: Colors.transparent,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index) {
                                return Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(

                                        height: MediaQuery.of(context).size.height*.3*.8,
                                        width: MediaQuery.of(context).size.width*.8,

                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: NetworkImage('https://previews.123rf.com/images/kzenon/kzenon1411/kzenon141100681/33791668-family-selecting-fruits-and-vegetables-while-grocery-shopping-in-supermarket.jpg'),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.circular(12)
                                        ),

                                        child: Stack(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context).size.height*.3*.8,
                                              width: MediaQuery.of(context).size.width*.8,

                                              decoration: BoxDecoration(
                                                  color: Colors.black.withOpacity(.3),

                                                  borderRadius: BorderRadius.circular(12)
                                              ),

                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 12,bottom: 12),
                                              child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text('Get 20% off',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 24
                                                  ),),
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ),
                                );
                              }
                          )
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*.2,
                        child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (con,index){
                              Productname productname=dummydata[index];
                              return Container(
                                height: MediaQuery.of(context).size.height*.2,
                                width: MediaQuery.of(context).size.width*.333,

                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 55,
                                      backgroundImage: NetworkImage('${productname.image}'),
                                    ),
                                    SizedBox(height: 8,),
                                    Opacity(
                                      opacity: .3,
                                      child: Container(
                                        height: MediaQuery.of(context).size.height*.2*.11,
                                        width: MediaQuery.of(context).size.width*.333*.47,

                                        decoration: BoxDecoration(
                                            color: Colors.white,

// color: Colors.teal,
                                            image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHfz0tzBdwnvHPAAJLU242amo5MBBOFrd4wDTc7fv0OxFololmKI7roGwNginwT2Wsl4o&usqp=CAU'),
                                                fit: BoxFit.fitWidth
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Text('${productname.name}',
                                      style: TextStyle(
                                          fontSize: 17
                                      ),)


                                  ],

                                ),
                              );
                            }
                        ),
                      ),
                      Container(

                          height: MediaQuery.of(context).size.height*.38,


                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              SizedBox(height: 16,),
                              Text("Today's Grocery Deals",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.8),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),),
                              SizedBox(height: 10,),
                              Container(
                                height: MediaQuery.of(context).size.height*.31,
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: dummyProducts.length,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,


                                  ),
                                  itemBuilder: (con,index){
                                    ProductModel productModel = dummyProducts[index];
                                    return  Container(
                                        height: MediaQuery.of(context).size.height*.3*.5,
                                        width: MediaQuery.of(context).size.width*.3,

                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(color: Colors.grey.withOpacity(.5))
                                        ),
                                        child:Stack(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  height:MediaQuery.of(context).size.height*.3*.5*.45,
                                                  decoration: BoxDecoration(
                                                    // color: Colors.red,
                                                      image: DecorationImage(image: NetworkImage('${productModel.image}'))
                                                  ),

                                                ),
                                                Text("${productModel.name}",
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                  ),),
                                                SizedBox(height: 20,),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 5,right: 5),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text('${productModel.oldPrice}',
                                                            style: TextStyle(
                                                                fontSize: 12
                                                            ),),
                                                          SizedBox(width: 3,),
                                                          Text('${productModel.currentPrice}',
                                                            style: TextStyle(
                                                                fontSize: 12
                                                            ),)
                                                        ],
                                                  context    ),
                                                      Row(
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons.solidStar,
                                                            color: Colors.yellow,
                                                            size: 12,
                                                          ),
                                                          SizedBox(width: 3,),
                                                          Text('${productModel.rating}')
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 8,top:6),
                      color: Colors.red,                         child: Align(
                                                alignment: Alignment.topRight,
                                                child: GestureDetector(

                                                  onTap: (){
                                                    if(productModel.isFavourite==false){
                                                      productModel.isFavourite=true;

                                                    }else{
                                                      productModel.isFavourite=false;
                                                    }
                                                    setState(() {

                                                    });
                                                  },

                                                  child: productModel.isFavourite==true? FaIcon(
                                                    FontAwesomeIcons.solidHeart,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ) : FaIcon(
                                                    FontAwesomeIcons.heart,
                                                    color: Colors.grey,
                                                    size: 18,
                                                  ),

                                                ),
                                              ),
                                            )
                                          ],

                                        )
                                    );
                                  },),
                              ),
                            ],
                          )
                      ),
                      SizedBox(height: 8,),




                      Container(
                        height: MediaQuery.of(context).size.height*.25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://pbs.twimg.com/media/EcLwjeXXsAUd6cD.jpg:large'),
                                fit: BoxFit.cover)
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height*.21,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,bottom: 10),
                                child: Text('Grocery Member Deals',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.7),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20

                                  ),),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height*.15,
                                child: GridView.builder(
                                    physics: NeverScrollableScrollPhysics(),

                                    itemCount: 3,

                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3
                                    ),
                                    itemBuilder: (BuildContext context, int index) {
                                      ProductModel pro=prototype[index];


                                      return
                                        Container(
                                            height: MediaQuery.of(context).size.height*.14,
                                            width: MediaQuery.of(context).size.width*.3,

                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(color: Colors.grey.withOpacity(.5))
                                            ),
                                            child:Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      height:MediaQuery.of(context).size.height*.3*.5*.45,
                                                      decoration: BoxDecoration(
                                                        // color: Colors.red,
                                                          image: DecorationImage(image: NetworkImage('${pro.image}'))
                                                      ),

                                                    ),
                                                    Text("${pro.name}",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                      ),),
                                                    SizedBox(height: 20,),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 5,right: 5),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text('${pro.oldPrice}',
                                                                style: TextStyle(
                                                                    fontSize: 12
                                                                ),),
                                                              SizedBox(width: 3,),
                                                              Text('${pro.currentPrice}',
                                                                style: TextStyle(
                                                                    fontSize: 12
                                     context                           ),)
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              FaIcon(
                                                                FontAwesomeIcons.solidStar,
                                                                color: Colors.yellow,
                                                                size: 12,
                                                              ),
                                                              SizedBox(width: 3,),
                                                              Text('${pro.rating}')
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 8,top:6),
                                                  child: Align(
                                                    alignment: Alignment.topRight,
                                                    child: GestureDetector(

                                                      onTap: (){
                                                        if(pro.isFavourite==false){
                                                          pro.isFavourite=true;

                                                        }else{
                                                          pro.isFavourite=false;
                                                        }
                                                        setState(() {

                                                        });
                                                      },

                                                      child: pro.isFavourite==true? FaIcon(
                                                        FontAwesomeIcons.solidHeart,
                                                        color: Colors.red,
                                                        size: 18,
                                                      ) : FaIcon(
                                                        FontAwesomeIcons.heart,
                                                        color: Colors.grey,
                                                        size: 18,
                                                      ),

                                                    ),
                                                  ),
                                                )
                                              ],

                                            )
                                        );
                                    }
                                ),
                              ),
                            ],
                          )
                      ),

                    ],
                  )
              ),*/
            ),






        )
    );

  }
}


