import 'package:flutter/material.dart';
import 'package:quiser/components/background.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
        elevation: 1,
        title: (Text('Quiser')),
      ),
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  // height: double.maxFinite,
                  color: Colors.blueGrey,
                  child: Icon(Icons.book,size: 50),
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: size.height * 0.3,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  // height: double.maxFinite,
                  color: Colors.blueGrey,
                  child: Icon(Icons.picture_as_pdf,size: 50),
                  height: 100,
                  width: 100,
                )
              ],
            ),
           Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Container(
                   padding: EdgeInsets.fromLTRB(0, 0, size.width*0.02,size.height*0.02 ),
                   child:ElevatedButton(
                     onPressed: (){},
                     child: Icon(Icons.add),
                     style: ButtonStyle(
                         shape: MaterialStateProperty.all(CircleBorder(side: BorderSide.none)),
                         fixedSize: MaterialStateProperty.all(Size.fromRadius(30))
                     ),
                   ),
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                   ),
                 )
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
