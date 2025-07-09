
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'profile_page_widgets_imports.dart';

class ProfileRatingWidget extends StatelessWidget {
  const ProfileRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      glow: false,
      ignoreGestures: true,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      unratedColor: context.colors.disableGray,
      itemSize: 20,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
