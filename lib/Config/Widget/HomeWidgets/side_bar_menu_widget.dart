import 'package:blog_app/Config/Routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class SideBarMenuWidget extends StatelessWidget {
  const SideBarMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserAccountsDrawerHeader(
            accountName:
                Text('Masab Haider', style: TextStyle(color: Colors.white)),
            accountEmail: Text('masabhaider4@gmail.com',
                style: TextStyle(color: Colors.white70)),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                IconlyBold.profile,
                color: Colors.black87,
                size: 40,
              ),
            ),
            decoration: BoxDecoration(color: Colors.black87),
          ),
          ListTile(
            leading: const Icon(IconlyBold.edit, color: Colors.white),
            title: Text(
              'Add New Article',
              style: GoogleFonts.montserrat(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, RoutesNames.createBlogScreen);
            },
          ),
          ListTile(
            leading: const Icon(IconlyBold.bookmark, color: Colors.white),
            title: Text(
              'Bookmarks',
              style: GoogleFonts.montserrat(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(IconlyBold.paper, color: Colors.white),
            title: Text(
              'Your Articles',
              style: GoogleFonts.montserrat(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(IconlyBold.category, color: Colors.white),
            title: Text('Categories',
                style: GoogleFonts.montserrat(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, RoutesNames.categoryScreen);
            },
          ),
          ListTile(
            leading: const Icon(IconlyBold.heart, color: Colors.white),
            title: Text('Favorites',
                style: GoogleFonts.montserrat(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(IconlyBold.chat, color: Colors.white),
            title: Text('Ai Assistance',
                style: GoogleFonts.montserrat(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, RoutesNames.aiAssistanceScreen);
            },
          ),
          const Spacer(),
          ListTile(
            leading: const Icon(IconlyBold.logout, color: Colors.white),
            title: Text('Log out',
                style: GoogleFonts.montserrat(color: Colors.white)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
