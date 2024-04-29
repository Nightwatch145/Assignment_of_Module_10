import 'package:flutter/material.dart';
import 'package:assignment_of_module_10/photo_gallery.dart';

void main()
{
  runApp( const MyApp());
}
class MyApp extends StatelessWidget
{
    const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      title: 'Photo Gallery',
      home: PhotoGallery(),
      debugShowCheckedModeBanner: false,
    );
  }

}