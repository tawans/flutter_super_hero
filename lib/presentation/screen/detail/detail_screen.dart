import 'package:flutter/material.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/presentation/screen/detail/detail_ui_event.dart';
import 'package:flutter_super_hero/presentation/screen/detail/detail_view_model.dart';
import 'package:flutter_super_hero/presentation/util/app_theme.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  final String? heroId;

  const DetailScreen({
    super.key,
    required this.heroId,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController? animationController;
  Animation<double>? animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  SuperHero? hero;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController!,
        curve: const Interval(0, 1.0, curve: Curves.fastOutSlowIn)));

    setData();
    super.initState();

    Future.microtask(() {
      context.read<DetailViewModel>().eventStream.listen((event) {
        switch (event) {
          case ShowSnackBarDetail(:final message):
            final snackBar = SnackBar(content: Text(message));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          case EndLoadingDetail():
            print('로딩 끝');
        }
      });
    });
  }

  Future<void> setData() async {
    animationController?.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });

    // await Future.microtask(
    //     () => context.read<DetailViewModel>().fetchHero(widget.heroId ?? ''));
  }

  @override
  Widget build(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;

    final viewModel = context.watch<DetailViewModel>();
    viewModel.fetchHero(widget.heroId ?? '');
    final state = viewModel.state;

    hero = state.hero;

    int parsePowerStat(String? value) {
      try {
        return int.parse(value ?? '0');
      } catch (e) {
        return 0; // 파싱할 수 없으면 0으로 처리
      }
    }

    final String averagePowerstats = ((parsePowerStat(hero?.powerstats.combat) +
                parsePowerStat(hero?.powerstats.durability) +
                parsePowerStat(hero?.powerstats.intelligence) +
                parsePowerStat(hero?.powerstats.power) +
                parsePowerStat(hero?.powerstats.speed) +
                parsePowerStat(hero?.powerstats.strength)) /
            6)
        .toStringAsFixed(0);

    // heroRepository.getHeroId(widget.heroId!).then((value) {
    //   if (!mounted) return;
    //   setState(() {
    //     hero = value;
    //   });
    // });

    if (hero == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Container(
      color: AppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Column(
              children: [
                AspectRatio(
                    aspectRatio: 1.2,
                    child: Image.network(
                      hero?.image.url ?? '',
                      fit: BoxFit.cover,
                    )
                    // CachedNetworkImage(
                    //   imageUrl: hero?.image.url ?? '',
                    //   placeholder: (context, url) => const Center(
                    //     child: CircularProgressIndicator(),
                    //   ),
                    //   errorWidget: (context, url, error) =>
                    //       const Icon(Icons.error),
                    //   fit: BoxFit.cover,
                    // ),
                    ),
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme.nearlyWhite,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: AppTheme.grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Container(
                      constraints: BoxConstraints(
                          minHeight: infoHeight,
                          maxHeight: tempHeight > infoHeight
                              ? tempHeight
                              : infoHeight),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 32.0, left: 18, right: 16),
                            child: Text(
                              hero?.name ?? 'Hero Name',
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                letterSpacing: 0.27,
                                color: AppTheme.darkerText,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, bottom: 8, top: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  //'\$28.99',
                                  hero?.biography.fullName ?? 'Full Name',
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 22,
                                    letterSpacing: 0.27,
                                    color: AppTheme.heroBlue,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        averagePowerstats,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 22,
                                          letterSpacing: 0.27,
                                          color: AppTheme.grey,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: AppTheme.heroBlue,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 500),
                              opacity: opacity1,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  children: <Widget>[
                                    getTimeBoxUI(
                                        hero?.powerstats.power ?? '0', 'power'),
                                    getTimeBoxUI(
                                        hero?.powerstats.strength ?? '0',
                                        'strength'),
                                    getTimeBoxUI(
                                        hero?.powerstats.speed ?? '0', 'speed'),
                                    getTimeBoxUI(
                                        hero?.powerstats.durability ?? '0',
                                        'durability'),
                                    getTimeBoxUI(
                                        hero?.powerstats.intelligence ?? '0',
                                        'intelligence'),
                                    getTimeBoxUI(hero?.powerstats.combat ?? '0',
                                        'combat'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 500),
                              opacity: opacity2,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 8,
                                          bottom: 8),
                                      child: Text(
                                        hero?.biography.aliases.join(', ') ??
                                            'Aliases',
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color: AppTheme.darkText,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 8,
                                          bottom: 8),
                                      child: Text(
                                        hero?.biography.firstAppearance ??
                                            'First Appearance',
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color: AppTheme.darkText,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 8,
                                          bottom: 8),
                                      child: Text(
                                        hero?.biography.placeOfBirth ??
                                            'Place Of Birth',
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color: AppTheme.darkText,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 8,
                                          bottom: 8),
                                      child: Text(
                                        hero?.biography.publisher ??
                                            'Publisher',
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color: AppTheme.darkText,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 8,
                                          bottom: 8),
                                      child: Text(
                                        hero?.biography.alignment ??
                                            'Alignment',
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color: AppTheme.darkText,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 8,
                                          bottom: 8),
                                      child: Text(
                                        hero?.work.occupation ?? 'Occupation',
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color: AppTheme.darkText,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 8,
                                          bottom: 8),
                                      child: Text(
                                        hero?.work.base ?? 'Base',
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color: AppTheme.darkText,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 8,
                                          bottom: 8),
                                      child: Text(
                                        hero?.connections.groupAffiliation ??
                                            'Group Affiliation',
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color: AppTheme.darkText,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 8,
                                          bottom: 16),
                                      child: Text(
                                        hero?.connections.relatives ??
                                            'Relatives',
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color: AppTheme.darkText,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 500),
                            opacity: opacity3,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, bottom: 16, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    width: 48,
                                    height: 48,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppTheme.nearlyWhite,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(16.0),
                                        ),
                                        border: Border.all(
                                            color:
                                                AppTheme.grey.withOpacity(0.2)),
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: AppTheme.heroBlue,
                                        size: 28,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        color: AppTheme.heroBlue,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(16.0),
                                        ),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: AppTheme.heroBlue
                                                  .withOpacity(0.5),
                                              offset: const Offset(1.1, 1.1),
                                              blurRadius: 10.0),
                                        ],
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Join Course',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            letterSpacing: 0.0,
                                            color: AppTheme.nearlyWhite,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).padding.bottom,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 35,
              right: 35,
              child: ScaleTransition(
                alignment: Alignment.center,
                scale: CurvedAnimation(
                    parent: animationController!, curve: Curves.fastOutSlowIn),
                child: Card(
                  color: AppTheme.heroBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: const SizedBox(
                    width: 60,
                    height: 60,
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        color: AppTheme.nearlyWhite,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: SizedBox(
                width: AppBar().preferredSize.height,
                height: AppBar().preferredSize.height,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(AppBar().preferredSize.height),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: AppTheme.heroBlack,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getTimeBoxUI(String text1, String txt2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.nearlyWhite,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: AppTheme.grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: AppTheme.heroBlue,
                ),
              ),
              Text(
                txt2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: AppTheme.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
