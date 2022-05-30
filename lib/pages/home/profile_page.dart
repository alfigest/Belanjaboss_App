import 'package:flutter/material.dart';
import 'package:aplikasi_eccomerce/theme.dart';
import 'package:provider/provider.dart';
import 'package:aplikasi_eccomerce/models/user_model.dart';
import 'package:aplikasi_eccomerce/providers/auth_providers.dart';
import 'package:aplikasi_eccomerce/widgets/product_page.dart';
import 'package:aplikasi_eccomerce/pages/chat_admin.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget _header() {
      return AppBar(
        backgroundColor: bgColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                    user.profilePhotoUrl,
                    width: 64,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, ${user.name}',
                        style: primaryTextStyle.copyWith(
                            fontSize: 24, fontWeight: bold),
                      ),
                      Text(
                        '@${user.username}',
                        style: subtitleTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/sign-in', (Route<dynamic> route) => false);
                    },
                    child: Image.asset('assets/button_exit.png', width: 26)),
              ],
            ),
          ),
        ),
      );
    }

    Widget _menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            Icon(
              Icons.chevron_right,
              size: 16,
              color: primaryTextColor,
            ),
          ],
        ),
      );
    }

    Widget _content() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          width: double.infinity,
          decoration: BoxDecoration(color: bgColor3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Account',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/edit-profile');
                },
                child: _menuItem('Edit Profile'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/order-history');
                },
                child: _menuItem('Your Orders'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/admin-chat');
                },
                child: _menuItem('Help'),
              ),
              SizedBox(height: 30),
              Text(
                'General',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              _menuItem('Privacy & Policy'),
              _menuItem('Term of Service'),
              _menuItem('Rate App'),
            ],
          ),
        ),
      );
    }

    return Center(
        child: Column(
      children: [
        _header(),
        _content(),
      ],
    ));
  }
}
