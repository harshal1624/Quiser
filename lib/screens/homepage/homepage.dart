import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiser/components/background.dart';
import 'package:quiser/components/bgfile.dart';
// import 'package:quiser/components/background.dart';
// import 'package:quiser/components/navbar.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var color = 0xff041E42;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: bgForAll(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Color(color),
                          ),
                            child:Icon(Icons.info_outline_rounded),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.center,
                        child: Text("Quiser",
                          style: GoogleFonts.raleway(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                            color: Colors.white
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment(0.6,0),
                        child: Text('To help student',
                        style: GoogleFonts.kurale(
                          color: Colors.white,
                        ),
                        ),
                      )
                    ],
                  ),
                  height: size.height/3,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Color(0xff041E42),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)
                      )
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          // height: double.maxFinite,
                          //color: Colors.blue,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(color).withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 5,
                                offset: Offset(2, 1),
                              )
                            ],
                          ),
                          child: Icon(Icons.book,size: 50,color: Color(color)),
                          height: 150,
                          width: 130,
                        ),
                        Container(
                          child: Text("Book",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
                          // height: double.maxFinite,
                          decoration: BoxDecoration(
                            //image: Image.asset(),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(color).withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(2, 1),
                                )
                              ]
                          ),
                          child: Icon(Icons.picture_as_pdf,color: Color(color),size: 50),

                          height: 150,
                          width: 130,
                        ),
                        Container(
                          child: Text("Notes",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          buttonBackgroundColor: Color(color),
          animationCurve: Curves.bounceInOut,
          height: size.height*0.09,
          animationDuration: const Duration(milliseconds: 200),
          color: Color(color),
          index: 0,
          items: <Widget>[
            Icon(Icons.home_filled,size: 25,color: Colors.white,),
            Icon(Icons.upload_file,size: 25,color: Colors.white,),
            Icon(Icons.add,size: 25,color: Colors.white,),
            Icon(Icons.downloading_rounded,size: 25,color: Colors.white,),
            Icon(Icons.person_outlined,size: 25,color: Colors.white,),
          ],
        onTap: (index){
            setState(() {

            });
        },
      ),
    );
  }
}
