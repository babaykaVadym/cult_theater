part of 'models.dart';

@freezed
class Actor with _$Actor {
  const factory Actor({
    int? thEmpId,
    String? thEmpName,
    String? thEmpDescription,
    String? thEmpBiography,
    bool? thEmpIsOwnTrope,
    int? thEmpTypeId,
    String? thEmpImageLink,
  }) = _Actor;

  factory Actor.fromJson(Map<String, dynamic> json) => _$ActorFromJson(json);
}
