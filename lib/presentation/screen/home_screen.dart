import 'package:flutter/material.dart';
import 'package:flutter_super_hero/data/repository/hero_repository_impl.dart';
import 'package:flutter_super_hero/domain/use_case/get_search_heros_usecase.dart';
import 'package:flutter_super_hero/presentation/components/search_bar_ui.dart';
import 'package:flutter_super_hero/presentation/util/app_theme.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final useCase = GetSearchHerosUseCase(HeroRepositoryImpl());

    return Container(
      color: AppTheme.nearlyWhite,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          appBarUI(),
          searchBarUi(context),
        ],
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
}
