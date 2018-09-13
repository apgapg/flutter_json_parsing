import 'package:json_annotation/json_annotation.dart';

part 'sample_model.g.dart';

@JsonSerializable()
class SampleModel {
  final String id;
  final String name;
  final String nickname;
  final String avatar;
  @JsonKey(name:"profile_complete",disallowNullValue: true,required: true)
  final bool profileComplete;

  SampleModel(this.id, this.name, this.nickname, this.avatar, this.profileComplete);

  factory SampleModel.fromJson(Map<String, dynamic> json) => _$SampleModelFromJson(json);
}

bool _convertTobool(value) {
  if (value is String) {
    if (value.toLowerCase() == "true")
      return true;
    else
      return false;
  } else
    return value;
}
