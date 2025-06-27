import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:openfashion/shared/themes/app_colors.dart';
// import 'package:openfashion/shared/themes/app_colors.dart';

class Appbar extends StatefulWidget implements PreferredSizeWidget {
  const Appbar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(50.0);
  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AppBar(
        backgroundColor: AppColors.backgroundcolor,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {},
          child: SvgPicture.asset('assets/icons/Menu.svg'),
        ),
        leadingWidth: 24.0,

        title: SvgPicture.asset('assets/logo/Logo.svg', width: 78.08),

        actions: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
          Gap(16),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset('assets/icons/shopping bag.svg'),
          ),
        ],
      ),
    );
  }
}
