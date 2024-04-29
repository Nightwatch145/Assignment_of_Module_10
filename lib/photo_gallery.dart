import 'package:assignment_of_module_10/selected_photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:assignment_of_module_10/photo_details.dart';

class PhotoGallery extends StatelessWidget
{
  const PhotoGallery({super.key});
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: const Color(0xFF2CAB00),
        title: const Text('Photo Gallery'),
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
               SystemNavigator.pop();
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
           return SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: SizedBox(
             height: MediaQuery.sizeOf(context).height,
             width: MediaQuery.sizeOf(context).width,
             child: Padding(
               padding: const EdgeInsets.all(20),
               child:GridView.builder(
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:  orientation == Orientation.portrait ? 2 : 4,
                   mainAxisSpacing: 20,crossAxisSpacing: 20
                 ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  final imageCard = images[index];
             return InkWell(
             splashColor: Colors.transparent,
             onTap: () {
             Navigator.push(
             context,
             MaterialPageRoute(
                 builder: (context) =>  PhotoDetailScreen(imageCard: imageCard) ));
             },
           child:
           Container(
           width: 180,
           height: 180,
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
           color: Colors.black.withOpacity(0.5),
           spreadRadius: 0,
           blurRadius: 32,
           offset: const Offset(5, 12), // changes position of shadow
           )
           ],
           ),
             alignment: Alignment.bottomLeft,
             child: Padding(
               padding:const  EdgeInsets.symmetric(horizontal: 20, vertical: 12),
               child: Text(imageCard.name,
                 style: const TextStyle(
                   fontSize: 20,
                   fontFamily: 'Roboto',
                   color: Color(0xFFFFFFFF),
                   fontWeight: FontWeight.w700,
                 )
               ),
             ),
           ),
           );
           }
             ),
             ),
           )
           );
         },
       )
     );
  }
}