import 'package:freezed_annotation/freezed_annotation.dart';

part 'demo.freezed.dart';
part 'demo.g.dart';

@freezed
class Demo with _$Demo {
  factory Demo(
    String name,
    String description,
    String image,
    String url,
  ) = _Demo;

  factory Demo.fromJson(Map<String, dynamic> json) => _$DemoFromJson(json);
}
