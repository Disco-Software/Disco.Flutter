import 'package:disco_app/presentation/common_widgets/post/widgets/post_author.dart';
import 'package:disco_app/presentation/pages/user/widgets/drawer/head_drawer/cubit/head_draver_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeaderDrawerView extends StatelessWidget {
  const HeaderDrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HeadDraverCubit>(
      create: (context) => HeadDraverCubit()..init(),
      child: Stack(children: [
        ClipPath(
          clipper: _ShadowCustomClipper(),
          child: Container(
            color: const Color.fromRGBO(160, 68, 255, 0.2),
            height: 110,
          ),
        ),
        ClipPath(
          clipper: _MyCustomClipper(),
          child: Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xFF362053),
            ),
          ),
        ),
        BlocBuilder<HeadDraverCubit, HeadDraverState>(
          builder: (context, state) {
            print(['=========>', state]);
            if (state is HeadDraverLoadingState) {
              return Container(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(),
              );
            } else if (state is HeadDraverHasDataState) {
              return PostAuthor(
                boxShadow: const BoxShadow(
                    color: Color(0xFFB21887D7),
                    offset: Offset(2, 3),
                    spreadRadius: 0,
                    blurRadius: 7),
                userName: state.name,
                photo: state.photoUrl,
                backgroundColor: Colors.transparent,
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ]),
    );
  }
}

class _MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
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

class _ShadowCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height - 10)
      ..lineTo(60, size.height - 10)
      ..arcToPoint(
        const Offset(80, 0),
        clockwise: false,
        radius: const Radius.circular(1),
      )
      ..lineTo(110, 70)
      ..lineTo(size.width, 70)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
