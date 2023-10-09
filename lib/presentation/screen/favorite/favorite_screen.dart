import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_super_hero/presentation/screen/favorite/favorite_provider.dart';
import 'package:flutter_super_hero/presentation/util/app_theme.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class FavoriteScreen extends ConsumerStatefulWidget {
  const FavoriteScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends ConsumerState<FavoriteScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(favoriteRiverpod.notifier).getAllHeros();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(favoriteRiverpod);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 65),
            Image.asset(
              'assets/images/logo/super_hero_app_logo_transper.png',
              fit: BoxFit.cover,
              width: 40,
            ),
            const SizedBox(width: 10),
            const Text(
              'FAVORITE HEROS',
              style: TextStyle(
                color: AppTheme.darkGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              itemCount: state.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(); // 항목 사이에 구분선 추가
              },
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.amber[50],
                  elevation: 4, // 카드 그림자 효과 추가
                  child: GestureDetector(
                    onTap: () {
                      context.push('/detail/${state[index].id}');
                    },
                    child: Slidable(
                      endActionPane:
                          ActionPane(motion: const StretchMotion(), children: [
                        SlidableAction(
                          label: 'Delete',
                          onPressed: (context) {
                            ref
                                .read(favoriteRiverpod.notifier)
                                .deleteHero(state[index].id);
                          },
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                        ),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 100,
                              height: 100,
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: state[index].imageUrl,
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                state[index].name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  ref
                                      .read(favoriteRiverpod.notifier)
                                      .deleteHero(state[index].id);
                                },
                                icon: const Icon(Icons.delete)),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
