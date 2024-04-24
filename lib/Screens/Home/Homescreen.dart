import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2A2C33),
        bottomNavigationBar: BottomAppBar(
          color: Color(0xff141519),
          height: height * 0.070, //60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: height * 0.10,
                width: width * 0.250, //100
                decoration: BoxDecoration(
                  color: Color(0xff363841),
                  shape: BoxShape.circle,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.home_filled,
                      size: 25,
                      color: Colors.white,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                height: height * 0.060,
                width: width * 0.10, //50
                decoration: BoxDecoration(
                  color: Color(0xff363841),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              Container(
                height: height * 0.060, //50
                width: width * 0.10, //50,
                decoration: BoxDecoration(
                  color: Color(0xff363841),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.shopping_cart_rounded,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'Assets/Images/Profileimages/pexels-mohamed-abdelghaffar-771742.jpg')),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 0.3,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        overflow: TextOverflow.clip,
                        'James Figueroa',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Spacer(),
                    /*cart box */
                    Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'price',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Products',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Cookies',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Premium',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xffE68135),
                      ),
                    ),
                    Text(
                      'See more',
                      style: TextStyle(
                        shadows: [
                          BoxShadow(
                              color: Color(0xffE68135),
                              spreadRadius: 1,
                              blurStyle: BlurStyle.normal,
                              blurRadius: 10)
                        ],
                        fontSize: 20,
                        color: Color(0xffE68135),
                      ),
                    ),
                  ],
                ),
              ),
              ...List.generate(cookiesDetail.llength, (index) =>cookieDetail() )
              cookieDetail(height, width),
              /*offers and see more*/
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Offers',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'See more',
                      style: TextStyle(
                        shadows: [
                          BoxShadow(
                              color: Color(0xffE68135),
                              spreadRadius: 1,
                              blurStyle: BlurStyle.normal,
                              blurRadius: 10)
                        ],
                        fontSize: 20,
                        color: Color(0xffE68135),
                      ),
                    )
                  ],
                ),
              ),

              /*offers list*/
              Container(
                height: height * 0.18,
                width: width * 0.95,
                decoration: BoxDecoration(
                    color: Color(0xff363841),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 150,
                      width: 100, // height * 0.140, //130
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                'Assets/Images/ProductImages/1.jpeg')),
                        border: Border.all(
                            color: Colors.white, style: BorderStyle.solid),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Double Chocolate',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              overflow: TextOverflow.clip,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Premium',
                            style: TextStyle(
                              color: Color(0xffE38035),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Price',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 60,
                          width: 60, // height * 0.140, //130
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container cookieDetail(double height, double width) {
    return Container(
              height: height * 0.400, //320
              width: width * 0.450,
              //185
              // color:Color(0xff363841),
              child: Column(
                children: [
                  Container(
                    height: 145, // height * 0.140, //130
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                              'Assets/Images/ProductImages/1.jpeg')),
                      border: Border.all(
                          color: Colors.white, style: BorderStyle.solid),
                    ),
                  ),
                  Container(
                    height: 210, //height * 0.180,
                    decoration: BoxDecoration(
                      color: Color(0xff363841),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(100)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Chocolates chips',
                            overflow: TextOverflow.clip,
                            style:
                                TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.workspace_premium_rounded,
                                color: Color(0xffE68135),
                                size: 20,
                              ),
                              Text(
                                'PREMIUM',
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    color: Color(0xffE68135), fontSize: 20),
                              ),
                            ],
                          ),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'price',
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 64, //height * 0.60, //130
                                width: 64, //width * 0.60, //130
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
  }
}
