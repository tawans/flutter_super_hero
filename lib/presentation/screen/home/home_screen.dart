import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_super_hero/presentation/components/search_bar_ui.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_state.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_ui_event.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_view_model.dart';

import 'package:flutter_super_hero/presentation/util/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();
  List<double> widgetHeights = [];
  List<Color> widgetColors = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 100; i++) {
      widgetHeights.add((Random().nextInt(256) + 64).toDouble());
      widgetColors.add(
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1));
    }

    Future.microtask(() {
      context.read<HomeViewModel>().eventStream.listen((event) {
        switch (event) {
          case ShowSnackBar(:final message):
            final snackBar = SnackBar(content: Text(message));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          case EndLoading():
            print('로딩 끝');
        }
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;

    return Container(
      color: AppTheme.nearlyWhite,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          appBarUI(),
          searchBarUi(context, controller, viewModel),
          if (state.heros.isNotEmpty)
            searchGridView(state)
          else
            staggeredGridView(),
        ],
      ),
    );
  }

  Widget staggeredGridView() {
    const List<String> imageList = [
      'https://www.superherodb.com/pictures2/portraits/10/100/791.jpg',
      'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
      'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
      'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
      'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
      'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
      'https://www.superherodb.com/pictures2/portraits/10/100/639.jpg',
      'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
      'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
      'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
      'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
    ];

    const List<String> textList = [
      'Spiderman',
      'Batman',
      'Superman',
      'Joker',
      'Ironman',
      'Spiderman',
      'Thor',
      'Hulk',
      'Captain America',
      'Black Widow',
      'Black Panther',
      'Flash',
      'Taewan',
    ];

    return Column(
      children: [
        const Text(
          'Popular Hero',
          // style: TextStyle(fontFamily: , fontSize: 20),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GridView.custom(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  const QuiltedGridTile(2, 2),
                  const QuiltedGridTile(1, 1),
                  const QuiltedGridTile(1, 1),
                  const QuiltedGridTile(1, 2),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      //border: Border.all(color: AppTheme.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.purple[100 * (index % 10)],
                    ),
                    alignment: Alignment.center,
                    // child: (
                    //   'List Item $index',
                    //   style: const TextStyle(
                    //       fontSize: 30, fontWeight: FontWeight.bold),
                    // ),
                    child: Stack(
                      children: [
                        Text(textList[index],
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        Image.network(
                          imageList[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ],
                    ),
                  );
                },
                childCount: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget appBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Search your',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.2,
                    color: AppTheme.grey,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Super',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        letterSpacing: 0.27,
                        color: AppTheme.darkerText,
                      ),
                    ),
                    Text(
                      'Hero',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        letterSpacing: 0.27,
                        color: AppTheme.heroBlue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: Lottie.asset('assets/lottie/hero1.json'),
          )
        ],
      ),
    );
  }

  Widget searchGridView(HomeState state) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final columnCount = switch (constraints.maxWidth) {
            > 1150 => 4,
            > 655 => 3,
            _ => 2,
          };

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columnCount,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: state.heros.length,
            itemBuilder: (context, index) {
              final hero = state.heros[index];
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: InkWell(
                  onTap: () {
                    context.push('/search');
                  },
                  child: Hero(
                    tag: hero.id,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      elevation: 4.0,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.network(
                              hero.image.url,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 140,
                            ),
                          ),
                          Text(
                            hero.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              letterSpacing: 0.27,
                              color: AppTheme.darkerText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
