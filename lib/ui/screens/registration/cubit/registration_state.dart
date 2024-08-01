part of 'registration_cubit.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial({
    required bool isLoading,
    @Default("") String email,
    @Default("") String password,
    @Default("") String nameText,
    @Default("") String errorText,
  }) = _Initial;
}
