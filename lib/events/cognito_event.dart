import 'package:aws_lambda_dart_runtime/runtime/event.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cognito_event.g.dart';

extension on Map<String, dynamic> {
  Map<String, dynamic> stripNullValues() =>
      this..removeWhere((key, value) => value == null);
}

@JsonEnum(alwaysCreate: true)
enum ChallengeName {
  @JsonValue('PASSWORD_VERIFIER')
  passwordVerifier,
  @JsonValue('SMS_MFA')
  smsMfa,
  @JsonValue('DEVICE_SRP_AUTH')
  deviceSrpAuth,
  @JsonValue('DEVICE_PASSWORD_VERIFIER')
  devicePasswordVerifier,
  @JsonValue('ADMIN_NO_SRP_AUTH')
  adminNoSrpAuth,
  @JsonValue('SRP_A')
  srpA,
  @JsonValue('CUSTOM_CHALLENGE')
  customChallenge;

  toString() => _$ChallengeNameEnumMap[this]!;
}

@JsonSerializable()
class ChallengeResult {
  @JsonKey()
  final ChallengeName challengeName;

  @JsonKey()
  final bool challengeResult;

  @JsonKey()
  final dynamic challengeMetadata;

  ChallengeResult({
    required this.challengeName,
    required this.challengeResult,
    required this.challengeMetadata,
  });

  factory ChallengeResult.fromJson(Map<String, dynamic> json) =>
      _$ChallengeResultFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChallengeResultToJson(this).stripNullValues();
}

@JsonSerializable()
class AwsCognitoEvent extends Event {
  @JsonKey()
  final String? version;

  @JsonKey()
  final String? triggerSource;

  @JsonKey()
  final String? region;

  @JsonKey()
  final String? userPoolId;

  @JsonKey()
  final String? userName;

  @JsonKey()
  final Map<String, String>? callerContext;

  @JsonKey()
  final AwsCognitoRequest request;

  @JsonKey()
  final AwsCognitoResponse response;

  const AwsCognitoEvent({
    this.version,
    this.triggerSource,
    this.region,
    this.userPoolId,
    this.userName,
    this.callerContext,
    required this.request,
    required this.response,
  });

  factory AwsCognitoEvent.fromJson(Map<String, dynamic> json) =>
      _$AwsCognitoEventFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AwsCognitoEventToJson(this).stripNullValues();
}

@JsonSerializable()
class AwsCognitoRequest {
  @JsonKey()
  final Map<String, dynamic> userAttributes;

  @JsonKey()
  final String? challengeName;

  @JsonKey()
  final List<ChallengeResult>? session;

  @JsonKey()
  final Map<String, String>? validationData;

  @JsonKey()
  final Map<String, String>? clientMetadata;

  @JsonKey()
  final bool? newDeviceUsed;

  @JsonKey()
  final AwsGroupConfiguration? groupConfiguration;

  @JsonKey()
  final String? password;

  @JsonKey()
  final String? codeParameter;

  @JsonKey()
  final bool? userNotFound;

  @JsonKey()
  final Map<String, String>? privateChallengeParameters;

  @JsonKey()
  final String? challengeAnswer;

  const AwsCognitoRequest({
    this.userAttributes = const {},
    this.challengeName,
    this.session,
    this.validationData,
    this.clientMetadata,
    this.newDeviceUsed,
    this.codeParameter,
    this.password,
    this.groupConfiguration,
    this.userNotFound,
    this.privateChallengeParameters,
    this.challengeAnswer,
  });

  factory AwsCognitoRequest.fromJson(Map<String, dynamic> json) =>
      _$AwsCognitoRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AwsCognitoRequestToJson(this).stripNullValues();
}

@JsonSerializable()
class AwsCognitoResponse {
  @JsonKey()
  bool? autoConfirmUser;

  @JsonKey()
  bool? autoVerifyPhone;

  @JsonKey()
  bool? autoVerifyEmail;

  @JsonKey()
  final AwsClaimOverrideDetails? claimsOverrideDetails;

  @JsonKey()
  final Map<String, String>? userAttributes;

  @JsonKey()
  final String? finalUserStatus;

  @JsonKey()
  final String? messageAction;

  @JsonKey()
  final List<String>? desiredDeliveryMediums;

  @JsonKey()
  final bool? forceAliasCreation;

  @JsonKey()
  final String? smsMessage;

  @JsonKey()
  final String? emailMessage;

  @JsonKey()
  final String? emailSubject;

  @JsonKey()
  bool? issueTokens;

  @JsonKey()
  bool? failAuthentication;

  @JsonKey()
  bool? answerCorrect;

  @JsonKey()
  String? challengeName;

  @JsonKey()
  Map<String, String>? publicChallengeParameters;

  @JsonKey()
  Map<String, String>? privateChallengeParameters;

  @JsonKey()
  String? challengeMetadata;

  AwsCognitoResponse({
    this.autoConfirmUser,
    this.autoVerifyEmail,
    this.autoVerifyPhone,
    this.claimsOverrideDetails,
    this.userAttributes,
    this.finalUserStatus,
    this.desiredDeliveryMediums,
    this.forceAliasCreation,
    this.messageAction,
    this.smsMessage,
    this.emailMessage,
    this.emailSubject,
    this.publicChallengeParameters,
    this.privateChallengeParameters,
    this.challengeMetadata,
  });

  factory AwsCognitoResponse.fromJson(Map<String, dynamic> json) =>
      _$AwsCognitoResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AwsCognitoResponseToJson(this).stripNullValues();
}

@JsonSerializable()
class AwsGroupConfiguration {
  @JsonKey()
  final List<String>? groupsToOverride;

  @JsonKey()
  final List<String>? iamRolesToOverride;

  @JsonKey()
  final String? preferredRole;

  @JsonKey()
  final Map<String, String>? clientMetadata;

  const AwsGroupConfiguration(
      {this.groupsToOverride,
      this.iamRolesToOverride,
      this.preferredRole,
      this.clientMetadata});

  factory AwsGroupConfiguration.fromJson(Map<String, dynamic> json) =>
      _$AwsGroupConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$AwsGroupConfigurationToJson(this);
}

@JsonSerializable()
class AwsClaimOverrideDetails {
  @JsonKey()
  final Map<String, String>? claimsToAddOrOverride;

  @JsonKey()
  final List<String>? claimsToSuppress;

  @JsonKey()
  final AwsGroupConfiguration? groupOverrideDetails;

  const AwsClaimOverrideDetails(
      {this.claimsToAddOrOverride,
      this.claimsToSuppress,
      this.groupOverrideDetails});

  factory AwsClaimOverrideDetails.fromJson(Map<String, dynamic> json) =>
      _$AwsClaimOverrideDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AwsClaimOverrideDetailsToJson(this);
}
