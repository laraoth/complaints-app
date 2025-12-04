import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';
import 'drawer_header.dart';
import 'drawer_tile.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.background,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DrawerHeaderSection(),
              SizedBox(height: 28.h),
              DrawerTile(
                title: "Settings",
                icon: Icons.settings,
                onTap: () => Navigator.pop(context),
              ),
              DrawerTile(
                title: "Notifications",
                icon: Icons.notifications,
                onTap: () => Navigator.pop(context),
              ),
              SizedBox(height: 8.h),
              DrawerTile(
                title: "Logout",
                icon: Icons.logout,
                onTap: () => Navigator.pop(context),
              ),
              SizedBox(height: 8.h),
            ],
          ),
        ),
      ),
    );
  }
}
