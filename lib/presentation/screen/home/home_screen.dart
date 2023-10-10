import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_provider.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_ui_event.dart';

import 'package:flutter_super_hero/presentation/util/app_theme.dart';
import 'package:flutter_super_hero/presentation/util/hex_color.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final controller = TextEditingController();

  Timer? _debounceTimer;

  final PagingController<int, SuperHero> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(homeRiverpod.notifier).eventStream.listen((event) {
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
    final state = ref.watch(homeRiverpod);

    controller.addListener(() {
      if (_debounceTimer?.isActive ?? false) {
        _debounceTimer?.cancel();
      }

      _debounceTimer = Timer(const Duration(milliseconds: 500), () {
        if (controller.text.isEmpty) {
          return;
        }
        ref.read(homeRiverpod.notifier).fetchHeros(controller.text);
      });

      if (controller.text.isEmpty) {
        _pagingController.refresh();
      }
    });

    List<List<String>> popularHeroList = [
      [
        '644',
        '263',
        '313',
        '370',
        '213',
        '659',
        '332',
        '732',
        '149',
        '106',
        '70',
        '107',
      ],
      [
        'Superman',
        'Flash',
        'Hawkeye',
        'Joker',
        'Deadpool',
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
        'https://www.superherodb.com/pictures2/portraits/10/100/835.jpg',
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
          searchBarUi(context, controller),
          const SizedBox(
            height: 4,
          ),
          if (controller.text.isEmpty || state.isEmpty)
            staggeredGridView(popularHeroList)
          else
            searchGridView(state, popularHeroList),
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
                          color: const Color.fromARGB(255, 85, 77, 77)
                              .withOpacity(0.5),
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
                  'Search your favorite',
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

  Widget searchGridView(List<SuperHero> state, popularHeroList) {
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
            itemCount: state.length,
            itemBuilder: (context, index) {
              final hero = state[index];
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: InkWell(
                  onTap: () {
                    context.push('/detail/${state[index].id}');
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

  Widget searchBarUi(BuildContext context, TextEditingController controller) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final screenWidth = MediaQuery.of(context).size.width;
    final searchBarWidth = !isPortrait ? screenWidth - 136 : screenWidth - 18;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: searchBarWidth,
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor('#F8FAFB'),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(13.0),
                    bottomLeft: Radius.circular(13.0),
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: TextField(
                          onSubmitted: (value) {
                            ref
                                .read(homeRiverpod.notifier)
                                .fetchHeros(controller.text);
                          },
                          controller: controller,
                          cursorColor: AppTheme.heroBlue,
                          autofocus: false,
                          style: const TextStyle(
                            decorationThickness: 0,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: AppTheme.darkText,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Search Your Hero Name',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: HexColor('#B9BABC'),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.search,
                                color: HexColor('#B9BABC'),
                              ),
                              onPressed: () {
                                ref
                                    .read(homeRiverpod.notifier)
                                    .fetchHeros(controller.text);
                              },
                            ),
                          ),
                          onEditingComplete: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
