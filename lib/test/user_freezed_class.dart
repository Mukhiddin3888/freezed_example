import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_freezed_class.freezed.dart';
part 'user_freezed_class.g.dart';

//data class

@JsonSerializable()
@freezed
abstract class User with _$User{
  const factory User( String name, int age) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

}

//union nested
@freezed
abstract class OperationNested with _$OperationNested{
  const factory OperationNested.add( int value) = _Add;
  const factory OperationNested.subtract( { required int value}) = _Subtract;

}

//Union non nested
@freezed
abstract class OperationNonNested with _$OperationNonNested{
  const factory OperationNonNested.increment( int value) = Increment;
  const factory OperationNonNested.decrement( { required int value}) = Decrement;

}


