import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/presentation/components/search_bar_ui.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_state.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_ui_event.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_view_model.dart';

import 'package:flutter_super_hero/presentation/util/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const _pageSize = 20;
  final controller = TextEditingController();

  final PagingController<int, SuperHero> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();

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

    const List<List<String>> popularHeroList = [
      [
        '644',
        '263',
        '313',
        '370',
        '622',
        '40',
        '332',
        '732',
        '149',
        '106',
        '69',
        '107',
      ],
      [
        'Superman',
        'Flash',
        'Hawkeye',
        'Joker',
        'Spiderman',
        'Thor',
        'Hulk',
        'Ironman',
        'Captain America',
        'Panther',
        'Batman',
        'Black Widow',
      ],
      [
        'https://www.superherodb.com/pictures2/portraits/10/100/791.jpg',
        'https://www.superherodb.com/pictures2/portraits/10/100/891.jpg',
        'https://www.superherodb.com/pictures2/portraits/10/100/73.jpg',
        'https://www.superherodb.com/pictures2/portraits/10/100/719.jpg',
        'https://www.superherodb.com/pictures2/portraits/10/100/10647.jpg',
        'https://www.superherodb.com/pictures2/portraits/10/100/140.jpg',
        'https://www.superherodb.com/pictures2/portraits/10/100/83.jpg',
        'https://www.superherodb.com/pictures2/portraits/10/100/85.jpg',
        'https://www.superherodb.com/pictures2/portraits/10/100/274.jpg',
        'https://www.superherodb.com/pictures2/portraits/10/100/247.jpg',
        'https://www.superherodb.com/pictures2/portraits/10/100/639.jpg',
        'https://www.superherodb.com/pictures2/portraits/10/100/248.jpg',
      ],
    ];

    return Container(
      color: AppTheme.nearlyWhite,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          appBarUI(),
          searchBarUi(context, controller, viewModel),
          const SizedBox(
            height: 4,
          ),
          if (state.heros.isNotEmpty)
            searchGridView(state, popularHeroList)
          else
            staggeredGridView(
              popularHeroList,
            ),
        ],
      ),
    );
  }

  Widget staggeredGridView(popularHeroList) {
    return Expanded(
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
              return GestureDetector(
                onTap: () {
                  context.push('/detail/${popularHeroList[0][index]}');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppTheme.heroBlue,
                  ),
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl: popularHeroList[2][index],
                        placeholder: (context, url) => loadingImage(context),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 30,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(2.2),
                          child: Text(
                            popularHeroList[1][index],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: 12,
          ),
        ),
      ),
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

  Widget searchGridView(HomeState state, popularHeroList) {
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
                    context.push('/detail/${popularHeroList[0][index]}');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 4.0,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: CachedNetworkImage(
                            imageUrl: hero.image.url,
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            placeholder: (context, url) =>
                                loadingImage(context),
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
              );
            },
          );
        },
      ),
    );
  }

  Widget loadingImage(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 140,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie/loading.json',
              width: 60,
              height: 60,
            ),
            const Text(
              '로딩중',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
