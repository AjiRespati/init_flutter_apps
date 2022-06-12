class ApplicationInfo {
  /// Prevents from object instantiation.
  ApplicationInfo._();

  static const appVersion = '0.0.1';

  static const serverMainUrl = String.fromEnvironment("hotel.service.url",
      defaultValue: 'http://172.16.10.51:30448');

  static const serverUrl = "$serverMainUrl/router";

  static const vanwebdevel = "http://172.16.10.81:8081";
  static const vanwebnew = "https://www.travelagent.co.id/home.jsp";
  static const traveldesk = "https://traveldesk.id/app/home.jsp";
  static const hin = "https://hin-trip.com/app/home.jsp";
  static const paytren = "https://loket.paytren.co.id/home.jsp";
}
