import 'package:flutter/material.dart';
import 'package:flutter_super_hero/presentation/screen/home/home_view_model.dart';
import 'package:flutter_super_hero/presentation/util/app_theme.dart';
import 'package:flutter_super_hero/presentation/util/hex_color.dart';

Widget searchBarUi(BuildContext context, TextEditingController controller,
    HomeViewModel viewModel) {
  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  final screenWidth = MediaQuery.of(context).size.width;
  final searchBarWidth = !isPortrait
      ? screenWidth - 136
      : screenWidth - 18; // 세로 모드와 가로 모드에 따라 너비 설정

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
                          viewModel.fetchHeros(controller.text);
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
                              viewModel.fetchHeros(controller.text);
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
