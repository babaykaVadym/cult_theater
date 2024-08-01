part of 'user_information_cubit.dart';

@freezed
class UserInformationState with _$UserInformationState {
  const factory UserInformationState.initial({
    required bool isLoading,
    User? user,
  }) = _Initial;
}
