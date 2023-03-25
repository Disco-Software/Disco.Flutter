import 'package:cached_network_image/cached_network_image.dart';
import 'package:disco_app/data/network/network_models/post_network.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostAuthor extends StatelessWidget {
  const PostAuthor(
      {Key? key, required this.userName, required this.photo, this.boxShadow, this.backgroundColor})
      : super(key: key);

  final String? photo;
  final String? userName;
  final BoxShadow? boxShadow;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    // print('lol1 $userName $photo ');
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: backgroundColor ?? const Color(0xFF201636),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 60,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
                boxShadow: [
                  boxShadow ??
                      const BoxShadow(
                          color: Color(0xFFB21887D7),
                          offset: Offset(2, 3),
                          spreadRadius: 7,
                          blurRadius: 7)
                ]),
            child: photo != null
                ? ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    child: photo!.isNotEmpty
                        ? CachedNetworkImage(
                            imageUrl: photo ?? '',
                            placeholder: (context, url) => Image.asset('assets/ic_photo.png'),
                            fit: BoxFit.fill,
                          )
                        : Image.asset('assets/ic_photo.png'),
                  )
                : Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      child: Image.asset(
                        'assets/ic_photo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(userName ?? "",
              style: GoogleFonts.aBeeZee(
                color: const Color(0xFFE6E0D2),
                fontSize: 24,
              )),
          const Spacer(),
        ],
      ),
    );
  }
}
