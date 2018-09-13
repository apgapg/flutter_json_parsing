// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampleModel _$SampleModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['profile_complete'],
      disallowNullValues: const ['profile_complete']);
  return SampleModel(
      json['id'] as String,
      json['name'] as String,
      json['nickname'] as String,
      json['avatar'] as String,
      json['profile_complete'] as bool);
}

Map<String, dynamic> _$SampleModelToJson(SampleModel instance) {
  var val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'nickname': instance.nickname,
    'avatar': instance.avatar,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profile_complete', instance.profileComplete);
  return val;
}
