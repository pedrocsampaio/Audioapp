import 'package:flutter/src/painting/image_provider.dart';

class ReviewViewModel {
  final String userName;
  final String profileImageUrl; // Deve ser 'profileImageUrl'
  final int rating;
  final String comment;

  ReviewViewModel({
    required this.userName,
    required this.profileImageUrl, // Certifique-se de que este é o nome correto
    required this.rating,
    required this.comment,
  });
}

