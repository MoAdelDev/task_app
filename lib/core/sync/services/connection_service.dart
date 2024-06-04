import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  ConnectivityService();

  Future<bool> hasConnection() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return !connectivityResult.contains(ConnectivityResult.none);
  }
}
