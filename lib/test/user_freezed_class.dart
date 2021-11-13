import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_freezed_class.freezed.dart';
part 'user_freezed_class.g.dart';

@JsonSerializable()
@freezed
abstract class User with _$User{
  const factory User( String name, int age) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

}