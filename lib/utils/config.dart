
// Auth URIs
const String AUTH_CLIENT_ID = 'melteckclient';//''globalapicodeflow';
const String AUTH_REDIRECT_URL = '';//'com.melteckxtra.melteckxtra:/oauthredirect';
const String AUTH_ISSUER = 'https://localhost:44310';//''https://demo.persol-apps.com/PersolAuthService';
const String AUTH_DISCOVERY_URL =
    '$AUTH_ISSUER/.well-known/openid-configuration';
const String AUTH_USER_INFO = '$AUTH_ISSUER/connect/userinfo';
const List<String> AUTH_SCOPES = <String>[
  'openid',
  'profile',
  'email',
  'roles'
  //'globalapi',
  //'offline_access'
];

//API URIs
const String PAYROLL_URL = 'https://demo.persol-apps.com/PayrollService.API/api/v1.1';
const String GOOGLE_COMPANY_ID = '0053a2cb-ed6b-499c-b2bc-67dec0fa74ed';
