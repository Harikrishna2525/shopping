import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class succe extends StatefulWidget {
  const succe({super.key});

  @override
  State<succe> createState() => _succeState();
}

class _succeState extends State<succe> {
  var size,heigth,width;
  @override
  Widget build(BuildContext context) {
    var decrator = DotsDecorator(
      activeColor: Colors.white
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .6,
                  width: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://images.meesho.com/images/products/197792120/gconm_512.jpg"),fit: BoxFit.fill
                      ),
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      )
                  ),
                ),
                Positioned(
                    top: 40,
                    left: 8,
                    child: GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                        child: Icon(Icons.arrow_back,color: Colors.black,))
                ),
                Positioned(
                    top: 40,
                    right: 8,
                    child: Icon(Icons.production_quantity_limits,color: Colors.black,)),
                Positioned(
                    bottom: 5,
                    left: 180,
                    child: DotsIndicator(
                      dotsCount: 3,
                      decorator: decrator,
                    )
                )
              ],
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Kurthis",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600),),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" ₹ 5999.00",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600)),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" Colors",style: TextStyle(color: Colors.brown,fontSize: 20,fontWeight: FontWeight.w600)),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.09,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.blue,
                              width: 3
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.07,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pink,
                        )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.07,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("Size",style: TextStyle(color: Colors.pink,fontSize: 22,fontWeight: FontWeight.w600)),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(child: Text("M",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w600),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(child: Text("L",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w600),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(child: Text("XL",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w600),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(child: Text("XXL",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w600),)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.height * 0.70,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Text("Add to cart",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),)),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.01,
              width: MediaQuery.of(context).size.width * 0.3,
            )




          ],
        ),
      ),

    );
  }
}
