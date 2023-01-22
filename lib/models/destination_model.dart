import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String? id;
  final String? name;
  final String? city;
  final String? description;
  final String? address;
  final String imageUrl;
  final String? photoUrl0;
  final String? photoUrl1;
  final String? photoUrl2;
  final double? rating;
  final int price;

  DestinationModel({
    required this.id,
    this.name = '',
    this.city = '',
    this.description = '',
    this.address = '',
    this.imageUrl = '',
    this.photoUrl0 = '',
    this.photoUrl1 = '',
    this.photoUrl2 = '',
    this.rating = 0.0,
    this.price = 0,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'],
        city: json['city'],
        imageUrl: json['imageUrl'],
        rating: json['rating'].toDouble(),
        price: json['price'],
        description: json['description'],
        address: json['address'],
        photoUrl0: json['photosUrl0'],
        photoUrl1: json['photosUrl1'],
        photoUrl2: json['photosUrl2'],
      );

  @override
  List<Object?> get props => [
        id,
        name,
        city,
        imageUrl,
        rating,
        price,
        description,
        address,
        photoUrl0,
        photoUrl1,
        photoUrl2,
      ];
}
