// ignore_for_file: avoid_unnecessary_containers, unused_import
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Game/features/select%20game/presentation/select_game.dart';
import 'package:flutter_application_1/News/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: 'Hello',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: '',
              style: TextStyle(
                  color: Color.fromARGB(255, 220, 192, 31),
                  fontSize: 20,
                  fontWeight: FontWeight.bold))
        ])),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return SelectGame();
                  })));
                },
                child: Container(
                  width: double.infinity,
                  height: 110,
                  child: Center(child: Text("Let's Play",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('lib/assets/letsplay.jpg'),fit:BoxFit.fill ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 36.0)),
            const NewListViewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
