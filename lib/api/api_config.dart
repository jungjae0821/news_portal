class ApiConfig {
  static const String baseUrl = 'https://daelim-server.fleecy.dev';
  static const String funUrl = '$baseUrl/functions/v1';

  static final auth = (
    login: '$funUrl/auth/get-token', //
  );
  static final news = (
    getTopic: '$funUrl/news/Topic',
    getIssue: '$funUrl/news/Issue', //
  );
}