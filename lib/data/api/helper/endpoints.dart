class Endpoint {
  static const String dashboard = '/dashboard/';
  static const String logIn = '/login';
  static const String sessions = '${dashboard}sessions';
  static const String createSession = '${dashboard}sessions/create';
  static const String participantsForm = '${dashboard}participants/form/';
  static const String importParticipants = '${dashboard}sessions/import';
  static const String participants = '${dashboard}participants/';
  static const String recordAttendance = '/participants/match';
  static const String removeAttendance = '/dashboard/participants/un_match';

  static const String skip = 'skip';
  static const String limit = 'take';
  static const String query = 'query';

  static const String forgotPassword = '/users/forgot-password';
  static const String resetPassword = '/users/reset-password';
  static const String teachers = '/teachers';
}
