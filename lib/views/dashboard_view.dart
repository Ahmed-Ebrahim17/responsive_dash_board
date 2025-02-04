import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dashboard_view_body.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashBoardView extends StatelessWidget {
  DashBoardView({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      appBar: width > 800 - 1
          ? null
          : AppBar(
              elevation: 0,
              backgroundColor: Color(0xff4EB7F2),
              leading: IconButton(
                color: Colors.white,
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            ),
      backgroundColor: Color(0xfff7f9fa),
      body: DashBoardViewBody(),
    );
  }
}
