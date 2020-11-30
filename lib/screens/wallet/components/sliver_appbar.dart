import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Image.asset(
          'assets/images/wallet_appbar.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          top: expandedHeight / 15 - shrinkOffset,
          child: AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Container(
              // padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                      onPressed: null),
                  Text(
                    "Your wallet",
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: SvgPicture.asset('assets/icons/note_wallet.svg'),
                    onPressed: null,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight / 2 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 3.5,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset('assets/images/face.png'),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
