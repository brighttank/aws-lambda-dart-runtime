// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengeResult _$ChallengeResultFromJson(Map<String, dynamic> json) =>
    ChallengeResult(
      challengeName: $enumDecode(_$ChallengeNameEnumMap, json['challengeName']),
      challengeResult: json['challengeResult'] as bool,
      challengeMetadata: json['challengeMetadata'],
    );

Map<String, dynamic> _$ChallengeResultToJson(ChallengeResult instance) =>
    <String, dynamic>{
      'challengeName': _$ChallengeNameEnumMap[instance.challengeName]!,
      'challengeResult': instance.challengeResult,
      'challengeMetadata': instance.challengeMetadata,
    };

const _$ChallengeNameEnumMap = {
  ChallengeName.passwordVerifier: 'PASSWORD_VERIFIER',
  ChallengeName.smsMfa: 'SMS_MFA',
  ChallengeName.deviceSrpAuth: 'DEVICE_SRP_AUTH',
  ChallengeName.devicePasswordVerifier: 'DEVICE_PASSWORD_VERIFIER',
  ChallengeName.adminNoSrpAuth: 'ADMIN_NO_SRP_AUTH',
  ChallengeName.srpA: 'SRP_A',
  ChallengeName.customChallenge: 'CUSTOM_CHALLENGE',
};

AwsCognitoEvent _$AwsCognitoEventFromJson(Map<String, dynamic> json) =>
    AwsCognitoEvent(
      version: json['version'] as String?,
      triggerSource: json['triggerSource'] as String?,
      region: json['region'] as String?,
      userPoolId: json['userPoolId'] as String?,
      userName: json['userName'] as String?,
      callerContext: (json['callerContext'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      request: json['request'] == null
          ? null
          : AwsCognitoRequest.fromJson(json['request'] as Map<String, dynamic>),
      response: json['response'] == null
          ? null
          : AwsCognitoResponse.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AwsCognitoEventToJson(AwsCognitoEvent instance) =>
    <String, dynamic>{
      'version': instance.version,
      'triggerSource': instance.triggerSource,
      'region': instance.region,
      'userPoolId': instance.userPoolId,
      'userName': instance.userName,
      'callerContext': instance.callerContext,
      'request': instance.request,
      'response': instance.response,
    };

AwsCognitoRequest _$AwsCognitoRequestFromJson(Map<String, dynamic> json) =>
    AwsCognitoRequest(
      userAttributes: json['userAttributes'] as Map<String, dynamic>?,
      challengeName: json['challengeName'] as String?,
      session: (json['session'] as List<dynamic>?)
          ?.map((e) => ChallengeResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      validationData: (json['validationData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      newDeviceUsed: json['newDeviceUsed'] as bool?,
      codeParameter: json['codeParameter'] as String?,
      password: json['password'] as String?,
      groupConfiguration: json['groupConfiguration'] == null
          ? null
          : AwsGroupConfiguration.fromJson(
              json['groupConfiguration'] as Map<String, dynamic>),
      userNotFound: json['userNotFound'] as bool?,
      privateChallengeParameters:
          (json['privateChallengeParameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      challengeAnswer: json['challengeAnswer'] as String?,
    );

Map<String, dynamic> _$AwsCognitoRequestToJson(AwsCognitoRequest instance) =>
    <String, dynamic>{
      'userAttributes': instance.userAttributes,
      'challengeName': instance.challengeName,
      'session': instance.session,
      'validationData': instance.validationData,
      'clientMetadata': instance.clientMetadata,
      'newDeviceUsed': instance.newDeviceUsed,
      'groupConfiguration': instance.groupConfiguration,
      'password': instance.password,
      'codeParameter': instance.codeParameter,
      'userNotFound': instance.userNotFound,
      'privateChallengeParameters': instance.privateChallengeParameters,
      'challengeAnswer': instance.challengeAnswer,
    };

AwsCognitoResponse _$AwsCognitoResponseFromJson(Map<String, dynamic> json) =>
    AwsCognitoResponse(
      autoConfirmUser: json['autoConfirmUser'] as bool?,
      autoVerifyEmail: json['autoVerifyEmail'] as bool?,
      autoVerifyPhone: json['autoVerifyPhone'] as bool?,
      claimsOverrideDetails: json['claimsOverrideDetails'] == null
          ? null
          : AwsClaimOverrideDetails.fromJson(
              json['claimsOverrideDetails'] as Map<String, dynamic>),
      userAttributes: (json['userAttributes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      finalUserStatus: json['finalUserStatus'] as String?,
      desiredDeliveryMediums: (json['desiredDeliveryMediums'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      forceAliasCreation: json['forceAliasCreation'] as bool?,
      messageAction: json['messageAction'] as String?,
      smsMessage: json['smsMessage'] as String?,
      emailMessage: json['emailMessage'] as String?,
      emailSubject: json['emailSubject'] as String?,
      publicChallengeParameters:
          (json['publicChallengeParameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      privateChallengeParameters:
          (json['privateChallengeParameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      challengeMetadata: json['challengeMetadata'] as String?,
    )
      ..issueTokens = json['issueTokens'] as bool?
      ..failAuthentication = json['failAuthentication'] as bool?
      ..answerCorrect = json['answerCorrect'] as bool?
      ..challengeName = json['challengeName'] as String?;

Map<String, dynamic> _$AwsCognitoResponseToJson(AwsCognitoResponse instance) =>
    <String, dynamic>{
      'autoConfirmUser': instance.autoConfirmUser,
      'autoVerifyPhone': instance.autoVerifyPhone,
      'autoVerifyEmail': instance.autoVerifyEmail,
      'claimsOverrideDetails': instance.claimsOverrideDetails,
      'userAttributes': instance.userAttributes,
      'finalUserStatus': instance.finalUserStatus,
      'messageAction': instance.messageAction,
      'desiredDeliveryMediums': instance.desiredDeliveryMediums,
      'forceAliasCreation': instance.forceAliasCreation,
      'smsMessage': instance.smsMessage,
      'emailMessage': instance.emailMessage,
      'emailSubject': instance.emailSubject,
      'issueTokens': instance.issueTokens,
      'failAuthentication': instance.failAuthentication,
      'answerCorrect': instance.answerCorrect,
      'challengeName': instance.challengeName,
      'publicChallengeParameters': instance.publicChallengeParameters,
      'privateChallengeParameters': instance.privateChallengeParameters,
      'challengeMetadata': instance.challengeMetadata,
    };

AwsGroupConfiguration _$AwsGroupConfigurationFromJson(
        Map<String, dynamic> json) =>
    AwsGroupConfiguration(
      groupsToOverride: (json['groupsToOverride'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      iamRolesToOverride: (json['iamRolesToOverride'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preferredRole: json['preferredRole'] as String?,
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$AwsGroupConfigurationToJson(
        AwsGroupConfiguration instance) =>
    <String, dynamic>{
      'groupsToOverride': instance.groupsToOverride,
      'iamRolesToOverride': instance.iamRolesToOverride,
      'preferredRole': instance.preferredRole,
      'clientMetadata': instance.clientMetadata,
    };

AwsClaimOverrideDetails _$AwsClaimOverrideDetailsFromJson(
        Map<String, dynamic> json) =>
    AwsClaimOverrideDetails(
      claimsToAddOrOverride:
          (json['claimsToAddOrOverride'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      claimsToSuppress: (json['claimsToSuppress'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      groupOverrideDetails: json['groupOverrideDetails'] == null
          ? null
          : AwsGroupConfiguration.fromJson(
              json['groupOverrideDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AwsClaimOverrideDetailsToJson(
        AwsClaimOverrideDetails instance) =>
    <String, dynamic>{
      'claimsToAddOrOverride': instance.claimsToAddOrOverride,
      'claimsToSuppress': instance.claimsToSuppress,
      'groupOverrideDetails': instance.groupOverrideDetails,
    };
