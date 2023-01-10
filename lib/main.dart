import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: farmerapp(),debugShowCheckedModeBanner: false,theme: ThemeData(primarySwatch: Colors.green),));
}
class farmerapp extends StatefulWidget{
  @override
  State<farmerapp> createState() => _farmerappState();
}

class _farmerappState extends State<farmerapp> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.cartShopping),label: "CART"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "ACCOUNT")
        ],
        
        
        ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("FARMERS FRESH ZONE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            floating: false,
            pinned: true,
            actions: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(FontAwesomeIcons.locationDot),
              ),
              Center(child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("kochi",style: TextStyle(fontWeight: FontWeight.bold),),
              ),),
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(FontAwesomeIcons.chevronDown),
              )
            ],
            bottom: AppBar(
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 40,
                  
                  
                 
                  child: Center(
                    child: TextField(
                      
                      decoration: InputDecoration(
                        
                        prefixIcon: Icon(Icons.search,color: Colors.grey,),
                        hintText: "search for Vegetables,Fruits...",
                        
                        
                      ),
                      
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
             SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                        height: 25,
                        width: 120,
                        
                        decoration: BoxDecoration(border: Border.all(color: Colors.green)
                          ,borderRadius: BorderRadius.circular(20),
                         ),
                        child: Center(child: Text("VEGETABLES",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),
                        
                      ),
                      Container(
                         
                        height: 25,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(20),
                         ),
                        child: Center(child: Text("FRUITS",style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold),)),
                        
                      ),
                      Container(
                         
                        height: 25,
                        width: 120,
                        decoration: BoxDecoration(border: Border.all(color: Colors.green)
                          ,borderRadius: BorderRadius.circular(20),
                         ),
                        child: Center(child: Text("EXOTIC",style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold),)),
                        
                      ),
                      Container(
                         
                        height: 25,
                        width: 120,
                        decoration: BoxDecoration(border: Border.all(color: Colors.green)
                          ,borderRadius: BorderRadius.circular(20),
                         ),
                        child: Center(child: Text("FRESH CUTS",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),)),
                    ]
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: CarouselSlider(
                              items: 
                              [
                                Container(
                                  width: double.infinity,
                                  child: Image(image: AssetImage("assets/images/health_benefits_carrots_732x549_thumb.jpg"),fit: BoxFit.fill,)
                                  
                                  
                                  
                                  
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Image(image:
                                  AssetImage("assets/images/istockphoto-861959662-612x612.jpg"),
                                  fit: BoxFit.fill)),
                                
                                Container(
                                  width: double.infinity,
                                  child: Image(image:
                                   AssetImage("assets/images/carot.jpg"),
                                    fit: BoxFit.fill)
                                  ),
                                
                                Container(
                                  width: double.infinity,
                                  child: Image(
                                  image: AssetImage("assets/images/grown-vegetables.jpg"),
                                    fit: BoxFit.fill),
                                  ),
                                
                              ], options: CarouselOptions(
                                height: 200,
                                enlargeCenterPage: false,
                                autoPlay: true,
                                aspectRatio: 16 / 9,
                                autoPlayCurve: Curves.easeIn,
                                autoPlayAnimationDuration: Duration(milliseconds: 500),
                                viewportFraction: 1, 
                              )),
                          ),
                        ],
                        
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 70,
                            width: double.infinity,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),),
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Icon(FontAwesomeIcons.stopwatch,color: Colors.black,),
                                    SizedBox(height: 10),
                                    Text("40 MINS POLICY")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(FontAwesomeIcons.mobileRetro,color: Colors.black,),
                                    SizedBox(height: 10),
                                    Text("TRACEBILITY")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.home_work,color: Colors.black,),
                                    SizedBox(height: 10),
                                    Text("LOCAL SURROUND")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20,left:10 )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Shop By Category",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        mycard()

            
                    ]
                  ))
                
            ]
          ));
        
      
    
  }
}
class mycard extends StatelessWidget{
  List <String> imgg=["assets/images/veg pic.jpg",  
                "assets/images/fruits.webp", 
               "assets/images/exotic-fruits-cover-1.jpg" ,
               "assets/images/cuts.jpg",
               "assets/images/nutri.jpg",
               "assets/images/flav.jpg"

  ];
  List<String> title=[
    "vegetables",
               "fruits",
               "exotic",
               "fresh cuts",
               "Nutrition charges",
               "packed flavours"
  ];
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: imgg.length,
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 5,mainAxisSpacing: 5),
         itemBuilder: (BuildContext context, int index){
      return Card(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
        children: [
          Container(
            height: 120,
            width: 300,
            
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imgg[index])),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
            topRight: Radius.circular(10))),
          ),
          Padding(padding: EdgeInsets.only(top:5)),
          Text(title[index], ),],),
        
        ),
      
      );

         }
    );
  }

}