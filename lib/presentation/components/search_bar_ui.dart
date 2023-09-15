import 'package:flutter/material.dart';
import 'package:flutter_super_hero/presentation/screen/home_view_model.dart';
import 'package:flutter_super_hero/presentation/util/app_theme.dart';
import 'package:flutter_super_hero/presentation/util/hex_color.dart';

Widget searchBarUi(BuildContext context, TextEditingController controller,
    HomeViewModel viewModel) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, left: 18),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
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
                        controller: controller,
                        cursorColor: AppTheme.heroBlue,
                        autofocus: true,
                        style: const TextStyle(
                          decorationThickness: 0,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: AppTheme.darkText,
                        ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Search Name',
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
        const Expanded(
          child: SizedBox(),
        )
      ],
    ),
  );
}
