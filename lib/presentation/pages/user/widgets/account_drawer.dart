import 'package:auto_route/auto_route.dart';
import 'package:disco_app/presentation/common_widgets/post/widgets/post_author.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../app/app_router.gr.dart';
import '../../../../data/local/local_storage.dart';
import '../../../../injection.dart';
import '../../../../res/colors.dart';

class AccountDrawer extends StatelessWidget {
  const AccountDrawer({Key? key, required this.userName, required this.photo})
      : super(key: key);

  final String? userName;
  final String? photo;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ColoredBox(
        color: DcColors.darkViolet,
        child: SafeArea(
          child: Column(
            children: [
              Stack(children: [
                ClipPath(
                  clipper: MyCustomClipper(),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xFF362053),
                    ),
                  ),
                ),
                PostAuthor(
                  boxShadow: const BoxShadow(
                      color: Color(0xFFB21887D7),
                      offset: Offset(2, 3),
                      spreadRadius: 0,
                      blurRadius: 7),
                  userName: userName,
                  photo: photo,
                  backgroundColor: Colors.transparent,
                ),
              ]),
              const SizedBox(
                height: 105,
              ),
              _IconButton(
                text: 'Edit profile',
                icon: 'assets/ic_edit.svg',
                onTap: () {},
              ),
              const SizedBox(height: 20),
              _IconButton(
                text: 'Archive',
                icon: 'assets/ic_archive.svg',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              _IconButton(
                text: 'Help',
                icon: 'assets/ic_help.svg',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              _IconButton(
                text: 'Settings',
                icon: 'assets/ic_settings.svg',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              _IconButton(
                text: 'Log Out',
                icon: 'assets/ic_help.svg',
                onTap: () async {
                  await getIt.get<SecureStorageRepository>().deleteAll();
                  context.router.replace(const SplashRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _UserClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(6 * _xScaling, 23 * _yScaling);
    path.cubicTo(
      6 * _xScaling,
      20.238599999999998 * _yScaling,
      8.238579999999999 * _xScaling,
      18 * _yScaling,
      11 * _xScaling,
      18 * _yScaling,
    );
    path.cubicTo(
      11 * _xScaling,
      18 * _yScaling,
      341 * _xScaling,
      18 * _yScaling,
      341 * _xScaling,
      18 * _yScaling,
    );
    path.cubicTo(
      343.761 * _xScaling,
      18 * _yScaling,
      346 * _xScaling,
      20.238599999999998 * _yScaling,
      346 * _xScaling,
      23 * _yScaling,
    );
    path.cubicTo(
      346 * _xScaling,
      23 * _yScaling,
      346 * _xScaling,
      125 * _yScaling,
      346 * _xScaling,
      125 * _yScaling,
    );
    path.cubicTo(
      346 * _xScaling,
      127.761 * _yScaling,
      343.761 * _xScaling,
      130 * _yScaling,
      341 * _xScaling,
      130 * _yScaling,
    );
    path.cubicTo(
      341 * _xScaling,
      130 * _yScaling,
      127.003 * _xScaling,
      130 * _yScaling,
      127.003 * _xScaling,
      130 * _yScaling,
    );
    path.cubicTo(
      118.352 * _xScaling,
      130 * _yScaling,
      109.85 * _xScaling,
      132.244 * _yScaling,
      102.326 * _xScaling,
      136.514 * _yScaling,
    );
    path.cubicTo(
      102.326 * _xScaling,
      136.514 * _yScaling,
      90.0398 * _xScaling,
      143.486 * _yScaling,
      90.0398 * _xScaling,
      143.486 * _yScaling,
    );
    path.cubicTo(
      82.5161 * _xScaling,
      147.756 * _yScaling,
      74.0134 * _xScaling,
      150 * _yScaling,
      65.3626 * _xScaling,
      150 * _yScaling,
    );
    path.cubicTo(
      65.3626 * _xScaling,
      150 * _yScaling,
      11 * _xScaling,
      150 * _yScaling,
      11 * _xScaling,
      150 * _yScaling,
    );
    path.cubicTo(
      8.23857 * _xScaling,
      150 * _yScaling,
      6 * _xScaling,
      147.761 * _yScaling,
      6 * _xScaling,
      145 * _yScaling,
    );
    path.cubicTo(
      6 * _xScaling,
      145 * _yScaling,
      6 * _xScaling,
      23 * _yScaling,
      6 * _xScaling,
      23 * _yScaling,
    );
    path.cubicTo(
      6 * _xScaling,
      23 * _yScaling,
      6 * _xScaling,
      23 * _yScaling,
      6 * _xScaling,
      23 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

class _IconButton extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String text;

  const _IconButton({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        text,
        style: GoogleFonts.textMeOne(fontSize: 20, color: DcColors.white),
      ),
      leading: SvgPicture.asset(icon),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20;

    Path path = Path()
      ..moveTo(0, 0) // point p1
      ..lineTo(0, size.height) // point p2
      ..lineTo(60, size.height) // point p3
      ..arcToPoint(
        const Offset(70, 0),
        clockwise: false,
        radius: const Radius.circular(1),
      )
      ..lineTo(100, 60) // point p4
      ..lineTo(size.width, 60) // point p5
      ..lineTo(size.width, 0) // point p6
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
