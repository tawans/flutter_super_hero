import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_super_hero/domain/model/super_hero.dart';
import 'package:flutter_super_hero/presentation/screen/detail/detail_provider.dart';
import 'package:flutter_super_hero/presentation/util/app_theme.dart';
import 'package:lottie/lottie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class DetailScreen extends ConsumerStatefulWidget {
  final String? heroId;

  const DetailScreen({
    super.key,
    required this.heroId,
  });

  @override
  ConsumerState<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends ConsumerState<DetailScreen>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController? animationController;
  Animation<double>? animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController!,
        curve: const Interval(0, 1.0, curve: Curves.fastOutSlowIn)));

    setData();
    super.initState();
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

    ref.read(detailRiverpod.notifier).getHero(widget.heroId!);
  }

  @override
  Widget build(BuildContext context) {
    FutureBuilder<SuperHero> futureBuilder() {
      return FutureBuilder<SuperHero>(
        future: ref.read(detailRiverpod.notifier).getHeroFuture(widget.heroId!),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return _buildDetailUI(context);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else {
            return loadingImage(context);
          }
        },
      );
    }

    return futureBuilder();
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

  Widget _buildDetailUI(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        600.0;

    final state = ref.watch(detailRiverpod);

    int parsePowerStat(String? value) {
      try {
        return int.parse(value ?? '0');
      } catch (e) {
        return 0;
      }
    }

    final String averagePowerstats = ((parsePowerStat(state.powerstats.combat) +
                parsePowerStat(state.powerstats.durability) +
                parsePowerStat(state.powerstats.intelligence) +
                parsePowerStat(state.powerstats.power) +
                parsePowerStat(state.powerstats.speed) +
                parsePowerStat(state.powerstats.strength)) /
            6)
        .toStringAsFixed(0);

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
                  child: CachedNetworkImage(
                    imageUrl: state.image.url,
                    placeholder: (context, url) => loadingImage(context),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.cover,
                  ),
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
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 32.0, left: 18, right: 16, bottom: 0),
                              child: Text(
                                state.name,
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
                                  left: 16, right: 16, bottom: 8, top: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    state.biography.fullName,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 22,
                                      letterSpacing: 0.27,
                                      color: Color.fromARGB(255, 66, 70, 71),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/images/power.png',
                                        height: 40,
                                        width: 40,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        averagePowerstats,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 22,
                                          letterSpacing: 0.27,
                                          color:
                                              Color.fromARGB(255, 39, 124, 0),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Average stats',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 22,
                                          letterSpacing: 0.27,
                                          color:
                                              Color.fromARGB(255, 35, 187, 204),
                                        ),
                                      ),
                                    ],
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
                                          state.powerstats.intelligence,
                                          'intelligence'),
                                      getTimeBoxUI(state.powerstats.strength,
                                          'strength'),
                                      getTimeBoxUI(
                                          state.powerstats.power, 'power'),
                                      getTimeBoxUI(
                                          state.powerstats.speed, 'speed'),
                                      getTimeBoxUI(
                                          state.powerstats.combat, 'combat'),
                                      getTimeBoxUI(state.powerstats.durability,
                                          'durability'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 500),
                                opacity: opacity2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 10, top: 8, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Appearance',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                          letterSpacing: 0.27,
                                          color: AppTheme.grey,
                                        ),
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'ㆍGender : ${state.appearance.gender}ㆍRace : ${state.appearance.race}\nㆍHeight : ${state.appearance.height}ㆍWeight : ${state.appearance.weight}\nㆍEye Color : ${state.appearance.eyeColor}ㆍHair Color : ${state.appearance.hairColor} ',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color:
                                              Color.fromARGB(255, 47, 64, 79),
                                        ),
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Divider(
                                        color: AppTheme.grey.withOpacity(0.2),
                                        height: 20,
                                        thickness: 1,
                                        indent: 0,
                                        endIndent: 0,
                                      ),
                                      const Text(
                                        'Biography',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                          letterSpacing: 0.27,
                                          color: AppTheme.grey,
                                        ),
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'ㆍAlter Egos : ${state.biography.alterEgos}\nㆍAliases : ${state.biography.aliases}\nㆍPlace of Birth : ${state.biography.placeOfBirth}\nㆍFirst Appearance : ${state.biography.firstAppearance}\nㆍPublisher : ${state.biography.publisher}\nㆍAlignment : ${state.biography.alignment} ',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          letterSpacing: 0.27,
                                          color: AppTheme.grey,
                                        ),
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Divider(
                                        color: AppTheme.grey.withOpacity(0.2),
                                        height: 20,
                                        thickness: 1,
                                        indent: 0,
                                        endIndent: 0,
                                      ),
                                      const Text(
                                        'Work',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                          letterSpacing: 0.27,
                                          color: AppTheme.grey,
                                        ),
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'ㆍOccupation : ${state.work.occupation}\nㆍBase of Operation : ${state.work.base}',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color:
                                              Color.fromARGB(255, 47, 64, 79),
                                        ),
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Divider(
                                        color: AppTheme.grey.withOpacity(0.2),
                                        height: 20,
                                        thickness: 1,
                                        indent: 0,
                                        endIndent: 0,
                                      ),
                                      const Text(
                                        'Connections',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                          letterSpacing: 0.27,
                                          color: AppTheme.grey,
                                        ),
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'ㆍGroup Affiliation : ${state.connections.groupAffiliation}\nㆍRelatives : ${state.connections.relatives} ',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color:
                                              Color.fromARGB(255, 47, 64, 79),
                                        ),
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Divider(
                                        color: AppTheme.grey.withOpacity(0.2),
                                        height: 20,
                                        thickness: 1,
                                        indent: 0,
                                        endIndent: 0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          ref
                              .read(detailRiverpod.notifier)
                              .toggleFavorite(state.id);
                        },
                        icon: isFavoriteIcon(),
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

  Widget isFavoriteIcon() {
    final isFavorite = ref
        .watch(detailRiverpod.notifier)
        .isFavorite(ref.watch(detailRiverpod).id);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: isFavorite
          ? const Icon(
              Icons.favorite,
              color: Colors.red,
              key: Key('favorite'),
            )
          : const Icon(
              Icons.favorite_border,
              key: Key('unfavorite'),
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
