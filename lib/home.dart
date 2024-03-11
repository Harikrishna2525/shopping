import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';
import 'package:shopping/model/carosel.dart';

class hom extends StatefulWidget {
  const hom({super.key});

  @override
  State<hom> createState() => _homState();
}

class _homState extends State<hom> {
  List<String> routes = [
    "/suc",
    "/fass",
    "/gui",
    "/sara"
  ];
  int currentindex = 0;
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        // backgroundColor: Colors.black,
        leading:  Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage("https://images.crunchbase.com/image/upload/c_thumb,h_256,w_256,f_auto,g_faces,z_0.7,q_auto:eco,dpr_1/gxsqslddwyexcz1vujs7"),fit: BoxFit.contain
                )
            ),
          ),
        ),
        title: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Hello,Hari !!",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w700),),
            Text("Let's Start reading",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey
                )
              ),
              child: Icon(Icons.search,color: Colors.black,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.10,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.grey
                  )
              ),
              child: Icon(Icons.notifications_active,color: Colors.black38,),
            ),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("#SpecialForYou",style: TextStyle(color: Colors.black,fontSize: 18,fontFamily: "ARLRDBD",fontWeight: FontWeight.w200),),
                    Text("See All",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontFamily: "ARLRDBD",fontWeight: FontWeight.w200),),
                  ],
                ),
              ),
              CarouselSlider.builder(
                  options: CarouselOptions(
                    viewportFraction: 0.9,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 2000),
                    reverse: false,
                    aspectRatio: 16/9,
                    scrollDirection: Axis.horizontal,
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                    onPageChanged: (index,reason){
                      setState(() {
                        currentindex = index;
                      });
                    }
                  ),
                itemCount: car.length,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
                    return Container(
                      // height: MediaQuery.of(context).size.height * .1,
                      // width: MediaQuery.of(context).size.height * 0.60,
                      decoration: BoxDecoration(
                        // color: Colors.lime,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: NetworkImage(car[itemIndex].image),fit: BoxFit.contain
                        )
                      ),
                    );
                },
              ),
              DotsIndicator(
                  dotsCount: 3,
                position: currentindex,
          
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Selling",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200,fontFamily: "ARLRDBD",fontSize: 18),),
                    Text("See All",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w200,fontFamily: "ARLRDBD",fontSize: 17),),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.14,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text("All",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontFamily: "ARLRDBD",fontSize: 15),)),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.20,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(14)
                    ),
                    child: Center(child: Text("Travel",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w200,fontFamily: "ARLRDBD",fontSize: 15),)),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(14)
                    ),
                    child: Center(child: Text("Biography",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w200,fontFamily: "ARLRDBD",fontSize: 15),)),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.20,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(14)
                    ),
                    child: Center(child: Text("Horror",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w200,fontFamily: "ARLRDBD",fontSize: 15),)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.height * 1,
                  // color: Colors.yellowAccent,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.height * 0.12,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dres.length,
                        itemBuilder: (BuildContext context, int index){
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    Get.toNamed(routes[index]);
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height * 0.20,
                                    width: MediaQuery.of(context).size.height * 0.14,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image: NetworkImage(dres[index].image),fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                ),
                              ),
                              Text(dres[index].text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),),
                              Text(dres[index].text1,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w200,fontFamily: "ARLRDBD",fontSize: 15),),
                            ],
                          );
                        }
                    ),
                  )

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Authors",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200,fontFamily: "ARLRDBD",fontSize: 18),),
                    Text("See All",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w200,fontFamily: "ARLRDBD",fontSize: 17),),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage("https://m.media-amazon.com/images/I/71fqFyMSaNL._AC_UF1000,1000_QL80_.jpg")
                          )

                        ),

                      ),
                      Text("Ed Shreean",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.15,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWmg6PkvvUjVk6Rdyas8Mzq3fmyp8HDLzpqEU2Je9O7uyF-eSD-tbxthka9eQtqqhsSAk&usqp=CAU")
                            )

                        ),

                      ),
                      Text("Sean Paul",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.15,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage("https://pbs.twimg.com/media/E6qo89XVoAMQ4cv.jpg")
                            )

                        ),

                      ),
                      Text("Directions",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.15,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage("https://cdns-images.dzcdn.net/images/artist/a6d3039ffa956ea6a43f61032a029acd/500x500-000000-80-0-0.jpg")
                            )

                        ),

                      ),
                      Text("sid sri ram",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ],
              )
          
            ],
          ),
        ),
      ),

    );
  }
}
