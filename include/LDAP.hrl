%% Generated by the Erlang ASN.1 compiler. Version: 5.0.17
%% Purpose: Erlang record definitions for each named and unnamed
%% SEQUENCE and SET, and macro definitions for each value
%% definition in module LDAP.

-ifndef(_LDAP_HRL_).
-define(_LDAP_HRL_, true).

-record('LDAPMessage', {
  messageID,
  protocolOp,
  controls = asn1_NOVALUE
}).

-record('AttributeValueAssertion', {
  attributeDesc,
  assertionValue
}).

-record('PartialAttribute', {
  type,
  vals
}).

-record('LDAPResult', {
  resultCode,
  matchedDN,
  diagnosticMessage,
  referral = asn1_NOVALUE
}).

-record('Control', {
  controlType,
  criticality = asn1_DEFAULT,
  controlValue = asn1_NOVALUE
}).

-record('BindRequest', {
  version,
  name,
  authentication
}).

-record('SaslCredentials', {
  mechanism,
  credentials = asn1_NOVALUE
}).

-record('BindResponse', {
  resultCode,
  matchedDN,
  diagnosticMessage,
  referral = asn1_NOVALUE,
  serverSaslCreds = asn1_NOVALUE
}).

-record('SearchRequest', {
  baseObject,
  scope,
  derefAliases,
  sizeLimit,
  timeLimit,
  typesOnly,
  filter,
  attributes
}).

-record('SubstringFilter', {
  type,
  substrings
}).

-record('MatchingRuleAssertion', {
  matchingRule = asn1_NOVALUE,
  type = asn1_NOVALUE,
  matchValue,
  dnAttributes = asn1_DEFAULT
}).

-record('SearchResultEntry', {
  objectName,
  attributes
}).

-record('ModifyRequest', {
  object,
  changes
}).

-record('ModifyRequest_changes_SEQOF', {
  operation,
  modification
}).

-record('AddRequest', {
  entry,
  attributes
}).

-record('ModifyDNRequest', {
  entry,
  newrdn,
  deleteoldrdn,
  newSuperior = asn1_NOVALUE
}).

-record('CompareRequest', {
  entry,
  ava
}).

-record('ExtendedRequest', {
  requestName,
  requestValue = asn1_NOVALUE
}).

-record('ExtendedResponse', {
  resultCode,
  matchedDN,
  diagnosticMessage,
  referral = asn1_NOVALUE,
  responseName = asn1_NOVALUE,
  responseValue = asn1_NOVALUE
}).

-record('IntermediateResponse', {
  responseName = asn1_NOVALUE,
  responseValue = asn1_NOVALUE
}).

-define('maxInt', 2147483647).
-endif. %% _LDAP_HRL_
