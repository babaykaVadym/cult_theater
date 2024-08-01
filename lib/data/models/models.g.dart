// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActorImpl _$$ActorImplFromJson(Map<String, dynamic> json) => _$ActorImpl(
      thEmpId: (json['thEmpId'] as num?)?.toInt(),
      thEmpName: json['thEmpName'] as String?,
      thEmpDescription: json['thEmpDescription'] as String?,
      thEmpBiography: json['thEmpBiography'] as String?,
      thEmpIsOwnTrope: json['thEmpIsOwnTrope'] as bool?,
      thEmpTypeId: (json['thEmpTypeId'] as num?)?.toInt(),
      thEmpImageLink: json['thEmpImageLink'] as String?,
    );

Map<String, dynamic> _$$ActorImplToJson(_$ActorImpl instance) =>
    <String, dynamic>{
      'thEmpId': instance.thEmpId,
      'thEmpName': instance.thEmpName,
      'thEmpDescription': instance.thEmpDescription,
      'thEmpBiography': instance.thEmpBiography,
      'thEmpIsOwnTrope': instance.thEmpIsOwnTrope,
      'thEmpTypeId': instance.thEmpTypeId,
      'thEmpImageLink': instance.thEmpImageLink,
    };

_$AfishaModelImpl _$$AfishaModelImplFromJson(Map<String, dynamic> json) =>
    _$AfishaModelImpl(
      evId: (json['evId'] as num?)?.toInt(),
      evAdminId: (json['evAdminId'] as num?)?.toInt(),
      evHallId: (json['evHallId'] as num?)?.toInt(),
      evTitle: json['evTitle'] as String?,
      evDescription: json['evDescription'] as String?,
      evImageLink: json['evImageLink'] as String?,
      evDatetime: json['evDatetime'] as String?,
      evCreatedDatetime: json['evCreatedDatetime'] as String?,
      evEditedDatetime: json['evEditedDatetime'] as String?,
      evThumbImageLink: json['evThumbImageLink'] as String?,
      evActorsCustom: json['evActorsCustom'] as String?,
      evDirectorCustom: json['evDirectorCustom'] as String?,
      evDirector: AfishaModel._actorFromJson(json['evDirector']),
      evDirectorId: (json['evDirectorId'] as num?)?.toInt(),
      evMinAge: (json['evMinAge'] as num?)?.toInt(),
      evLanguage: json['evLanguage'] as String?,
      evDuration: (json['evDuration'] as num?)?.toInt(),
      evGenre: json['evGenre'] as String?,
      evIsThirdPartySale: json['evIsThirdPartySale'] as bool?,
      evThirdPartySaleLink: json['evThirdPartySaleLink'] as String?,
      evActors: json['evActors'] == null
          ? []
          : AfishaModel._actorsFromJson(json['evActors'] as List?),
    );

Map<String, dynamic> _$$AfishaModelImplToJson(_$AfishaModelImpl instance) =>
    <String, dynamic>{
      'evId': instance.evId,
      'evAdminId': instance.evAdminId,
      'evHallId': instance.evHallId,
      'evTitle': instance.evTitle,
      'evDescription': instance.evDescription,
      'evImageLink': instance.evImageLink,
      'evDatetime': instance.evDatetime,
      'evCreatedDatetime': instance.evCreatedDatetime,
      'evEditedDatetime': instance.evEditedDatetime,
      'evThumbImageLink': instance.evThumbImageLink,
      'evActorsCustom': instance.evActorsCustom,
      'evDirectorCustom': instance.evDirectorCustom,
      'evDirector': instance.evDirector,
      'evDirectorId': instance.evDirectorId,
      'evMinAge': instance.evMinAge,
      'evLanguage': instance.evLanguage,
      'evDuration': instance.evDuration,
      'evGenre': instance.evGenre,
      'evIsThirdPartySale': instance.evIsThirdPartySale,
      'evThirdPartySaleLink': instance.evThirdPartySaleLink,
      'evActors': instance.evActors,
    };

_$EventTicketImpl _$$EventTicketImplFromJson(Map<String, dynamic> json) =>
    _$EventTicketImpl(
      etId: (json['etId'] as num?)?.toInt(),
      etEventName: json['etEventName'] as String?,
      etEventDate: json['etEventDate'] as String?,
      etHallName: json['etHallName'] as String?,
      etHash: json['etHash'] as String?,
      etIsPlaceBooked: json['etIsPlaceBooked'] as bool?,
      etIsUsed: json['etIsUsed'] as bool?,
      etRowNumber: (json['etRowNumber'] as num?)?.toInt(),
      etPlaceNumber: (json['etPlaceNumber'] as num?)?.toInt(),
      etPrice: (json['etPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EventTicketImplToJson(_$EventTicketImpl instance) =>
    <String, dynamic>{
      'etId': instance.etId,
      'etEventName': instance.etEventName,
      'etEventDate': instance.etEventDate,
      'etHallName': instance.etHallName,
      'etHash': instance.etHash,
      'etIsPlaceBooked': instance.etIsPlaceBooked,
      'etIsUsed': instance.etIsUsed,
      'etRowNumber': instance.etRowNumber,
      'etPlaceNumber': instance.etPlaceNumber,
      'etPrice': instance.etPrice,
    };

_$EwentsModelImpl _$$EwentsModelImplFromJson(Map<String, dynamic> json) =>
    _$EwentsModelImpl(
      nwsId: (json['nwsId'] as num?)?.toInt(),
      evAdminId: (json['evAdminId'] as num?)?.toInt(),
      evHallId: (json['evHallId'] as num?)?.toInt(),
      evMinAge: (json['evMinAge'] as num?)?.toInt(),
      evDuration: (json['evDuration'] as num?)?.toInt(),
      evTitle: json['evTitle'] as String?,
      evDescription: json['evDescription'] as String?,
      evImageLink: json['evImageLink'] as String?,
      evDatetime: json['evDatetime'] as String?,
      evDirectorId: json['evDirectorId'] as String?,
      evLanguage: json['evLanguage'] as String?,
      evGenre: json['evGenre'] as String?,
      evThirdPartySaleLink: json['evThirdPartySaleLink'] as String?,
      evIsThirdPartySale: json['evIsThirdPartySale'] as bool?,
    );

Map<String, dynamic> _$$EwentsModelImplToJson(_$EwentsModelImpl instance) =>
    <String, dynamic>{
      'nwsId': instance.nwsId,
      'evAdminId': instance.evAdminId,
      'evHallId': instance.evHallId,
      'evMinAge': instance.evMinAge,
      'evDuration': instance.evDuration,
      'evTitle': instance.evTitle,
      'evDescription': instance.evDescription,
      'evImageLink': instance.evImageLink,
      'evDatetime': instance.evDatetime,
      'evDirectorId': instance.evDirectorId,
      'evLanguage': instance.evLanguage,
      'evGenre': instance.evGenre,
      'evThirdPartySaleLink': instance.evThirdPartySaleLink,
      'evIsThirdPartySale': instance.evIsThirdPartySale,
    };

_$LoginDataImpl _$$LoginDataImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataImpl(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresAt: json['expiresAt'] as String?,
    );

Map<String, dynamic> _$$LoginDataImplToJson(_$LoginDataImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresAt': instance.expiresAt,
    };

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => _$NewsImpl(
      nwsId: (json['nwsId'] as num?)?.toInt(),
      nwsAdminId: (json['nwsAdminId'] as num?)?.toInt(),
      nwsTitle: json['nwsTitle'] as String?,
      nwsThumbImageLink: json['nwsThumbImageLink'] as String?,
      nwsImageLink: json['nwsImageLink'] as String?,
      nwsDescription: json['nwsDescription'] as String?,
      nwsText: json['nwsText'] as String?,
      nwsCreatedDate: json['nwsCreatedDate'] as String?,
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'nwsId': instance.nwsId,
      'nwsAdminId': instance.nwsAdminId,
      'nwsTitle': instance.nwsTitle,
      'nwsThumbImageLink': instance.nwsThumbImageLink,
      'nwsImageLink': instance.nwsImageLink,
      'nwsDescription': instance.nwsDescription,
      'nwsText': instance.nwsText,
      'nwsCreatedDate': instance.nwsCreatedDate,
    };

_$OrderByModelImpl _$$OrderByModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderByModelImpl(
      ordId: (json['ordId'] as num?)?.toInt(),
      ordPrice: (json['ordPrice'] as num?)?.toInt(),
      ordUserId: (json['ordUserId'] as num?)?.toInt(),
      ordIsExpired: json['ordIsExpired'] as bool?,
      ordExpirationDate: json['ordExpirationDate'] as String?,
      ordPaymentLink: json['ordPaymentLink'] as String?,
      enterTokenExpirationDate: json['enterTokenExpirationDate'] as String?,
      enterToken: json['enterToken'] as String?,
      ordPayLink: json['ordPayLink'] as String?,
      ticketIds: (json['ticketIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$OrderByModelImplToJson(_$OrderByModelImpl instance) =>
    <String, dynamic>{
      'ordId': instance.ordId,
      'ordPrice': instance.ordPrice,
      'ordUserId': instance.ordUserId,
      'ordIsExpired': instance.ordIsExpired,
      'ordExpirationDate': instance.ordExpirationDate,
      'ordPaymentLink': instance.ordPaymentLink,
      'enterTokenExpirationDate': instance.enterTokenExpirationDate,
      'enterToken': instance.enterToken,
      'ordPayLink': instance.ordPayLink,
      'ticketIds': instance.ticketIds,
    };

_$TicketModelImpl _$$TicketModelImplFromJson(Map<String, dynamic> json) =>
    _$TicketModelImpl(
      ordId: (json['ordId'] as num?)?.toInt(),
      ordUserId: (json['ordUserId'] as num?)?.toInt(),
      ordPrice: (json['ordPrice'] as num?)?.toInt(),
      ordCreatedDate: json['ordCreatedDate'] as String?,
      ordStatus: json['ordStatus'] as String?,
      ordIsPayed: json['ordIsPayed'] as bool?,
      ordIsExpired: json['ordIsExpired'] as bool?,
      ordPaymentLink: json['ordPaymentLink'] as String?,
      ordPayed: json['ordPayed'] as String?,
      ordExpirationDate: json['ordExpirationDate'] as String?,
      ordEvent: TicketModel._ordEventFromJson(json['ordEvent']),
      ordEventTickets: json['ordEventTickets'] == null
          ? []
          : TicketModel._evTicketFromJson(json['ordEventTickets'] as List?),
    );

Map<String, dynamic> _$$TicketModelImplToJson(_$TicketModelImpl instance) =>
    <String, dynamic>{
      'ordId': instance.ordId,
      'ordUserId': instance.ordUserId,
      'ordPrice': instance.ordPrice,
      'ordCreatedDate': instance.ordCreatedDate,
      'ordStatus': instance.ordStatus,
      'ordIsPayed': instance.ordIsPayed,
      'ordIsExpired': instance.ordIsExpired,
      'ordPaymentLink': instance.ordPaymentLink,
      'ordPayed': instance.ordPayed,
      'ordExpirationDate': instance.ordExpirationDate,
      'ordEvent': instance.ordEvent,
      'ordEventTickets': instance.ordEventTickets,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      usrId: (json['usrId'] as num?)?.toInt(),
      usrEmail: json['usrEmail'] as String?,
      usrPhone: json['usrPhone'] as String?,
      usrName: json['usrName'] as String?,
      userFotoUrl: json['userFotoUrl'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'usrId': instance.usrId,
      'usrEmail': instance.usrEmail,
      'usrPhone': instance.usrPhone,
      'usrName': instance.usrName,
      'userFotoUrl': instance.userFotoUrl,
    };
