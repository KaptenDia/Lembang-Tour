import 'package:airplane_bwa/models/destination_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

// ignore: must_be_immutable
class PhotoView extends StatelessWidget {
  PhotoView({super.key, required this.destination});

  final DestinationModel destination;
  // ignore: prefer_typing_uninitialized_variables
  var imageList;

  @override
  Widget build(BuildContext context) {
    return PhotoViewGallery.builder(
      itemCount: imageList.length,
      builder: (context, index) {
        return PhotoViewGalleryPageOptions(
          imageProvider: imageList[index],
        );
      },
    );
  }
}
