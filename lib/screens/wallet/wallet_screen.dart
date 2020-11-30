import 'package:flutter/material.dart';
import 'package:paypal/screens/wallet/components/all_bio_info.dart';
import 'package:paypal/screens/wallet/components/sliver_appbar.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(expandedHeight: 160),
            ),
            AllBioInfo(),
          ],
        ),
      ),
    );
  }
}
