import 'package:assignment_of_module_10/photo_details.dart';
import 'package:flutter/material.dart';

  class PhotoDetailScreen extends StatelessWidget {
  final ImageCard imageCard;
  const PhotoDetailScreen({super.key, required this.imageCard});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2CAB00),
        title:Text(imageCard.name),
        titleTextStyle:const TextStyle(
          fontFamily: 'Poppins',
          color:  Color(0xFFEFEFEF),
          fontSize: 20,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
        centerTitle: true,
        leading:Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(10.0)),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        actions: const [
          Icon(Icons.more_vert, color: Color(0xFFFAFAFA), size: 32)
        ],
      ),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            if (orientation == Orientation.portrait) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children :[
                        Container(
                          width: 390,
                          height: 325,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: NetworkImage(imageCard.picture),
                                fit: BoxFit.cover,
                              colorFilter:
                              ColorFilter.mode(Colors.black.withOpacity(0.16), BlendMode.darken),

                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.50),
                                spreadRadius: 0,
                                blurRadius: 32,
                                offset: const Offset(5, 12), // changes position of shadow
                              )
                            ],
                          ),
                        ),
                        ],
                      ),
                      Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                            child: Text(imageCard.header,
                              style: const TextStyle(
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF000000),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5, right:50, left:30),
                            child: Text(imageCard.description,
                            style: const TextStyle(
                              fontSize:15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF000000),
                              letterSpacing: 0.5,
                            )
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:const EdgeInsets.symmetric(vertical: 20),
                            child: Container(
                              width: 387,
                              height:51,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                color: const Color(0xFF2CAB00),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 25,
                                    offset: const Offset(0, 10), // changes position of shadow
                                  )
                                ],
                              ),
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:const Color(0xFF2CAB00),
                                ),
                                child: const Text('See more',
                                    style:TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFFFFFF),
                                      letterSpacing: 0.5
                                    )
                                ),
                              )
                            ),
                          )
                        ],
                      ),
                      const Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                            child: Text('Suggestions',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF2CAB00),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 10),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image:  DecorationImage(
                                image: const NetworkImage('https://images.pexels.com/photos/10666664/pexels-photo-10666664.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                fit: BoxFit.cover,
                                colorFilter:
                                ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.darken)

                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.50),
                                spreadRadius: 0,
                                blurRadius: 32,
                                offset: const Offset(5, 12), // changes position of shadow
                              )
                            ],
                          ),
                          alignment: Alignment.bottomLeft,
                          child: const Padding(
                            padding:EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            child:  Text('Dawn',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto',
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w700,
                                )
                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 180,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image:  DecorationImage(
                                image: const NetworkImage('https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                fit: BoxFit.cover,
                                colorFilter:
                                ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.darken),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.50),
                                spreadRadius: 0,
                                blurRadius: 32,
                                offset: const Offset(5, 12), // changes position of shadow
                              )
                            ],
                          ),
                          alignment: Alignment.bottomLeft,
                          child: const Padding(
                            padding:EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            child:  Text('Leaves',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto',
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w700,
                                )
                            ),
                          ),
                        ),
                      ],
                     ),
                   )
                    ],
                  )
              );
            } else {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                        child: Container(
                          width:372,
                          height: 298,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: NetworkImage(imageCard.picture),
                              fit: BoxFit.cover,
                              colorFilter:
                              ColorFilter.mode(Colors.black.withOpacity(0.16), BlendMode.darken),
                      
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.50),
                                spreadRadius: 0,
                                blurRadius: 32,
                                offset: const Offset(5, 12), // changes position of shadow
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            children:[
                              Padding(
                                
                                padding: const EdgeInsets.only(right:50, left:20, top:20, bottom: 15),
                                child: Text(imageCard.header,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF000000),
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50, left:20, bottom: 10),
                                child: Text(imageCard.description,
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF000000),
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:const EdgeInsets.symmetric(vertical: 20),
                                child: Container(
                                    width: 482,
                                    height:51,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(200),
                                      color: const Color(0xFF2CAB00),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 25,
                                          offset: const Offset(0, 10), // changes position of shadow
                                        )
                                      ],
                                    ),
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:const Color(0xFF2CAB00),
                                      ),
                                      child: const Text('See more',
                                          style:TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffFFFFFF),
                                              letterSpacing: 0.5
                                          )
                                      ),
                                    )
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right:50, left:16, top:8),
                                child: Text('Suggestions',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Color(0xFF2CAB00),
                                  )
                                 ),
                              ),
                            ] ,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:30,top:20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image:  DecorationImage(
                                        image: const NetworkImage('https://images.pexels.com/photos/10666664/pexels-photo-10666664.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                        fit: BoxFit.cover,
                                        colorFilter:
                                        ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.darken)

                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.50),
                                        spreadRadius: 0,
                                        blurRadius: 32,
                                        offset: const Offset(5, 12),
                                      )
                                    ],
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  child: const Padding(
                                    padding:EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    child:  Text('Dawn',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          color: Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w700,
                                        )
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image:  DecorationImage(
                                      image: const NetworkImage('https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                      fit: BoxFit.cover,
                                      colorFilter:
                                      ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.darken),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.50),
                                        spreadRadius: 0,
                                        blurRadius: 32,
                                        offset: const Offset(5, 12),
                                      )
                                    ],
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  child: const Padding(
                                    padding:EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    child:  Text('Leaves',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          color: Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w700,
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          },
        )
    );
  }
}



