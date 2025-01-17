import 'package:connectivity_plus/connectivity_plus.dart';

/// For checking internet connectivity
abstract class NetworkInfoI {
  Future<bool> isConnected();

  Future<List<ConnectivityResult>> get connectivityResult;

  Stream<List<ConnectivityResult>> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  Connectivity connectivity;

  NetworkInfo(this.connectivity);

  /// A `Future` that returns a `bool` indicating whether the device is connected
  /// to the internet or not.
  ///
  /// This function checks the device's connectivity status using the `connectivity` package.
  /// If the connectivity result is not `ConnectivityResult.none`, it returns `true`,
  /// otherwise it returns `false`.
  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();
    if (result.contains(ConnectivityResult.none)) {
      return false;
    }
    return true;
  }

  /// To check type of internet connectivity
  @override
  Future<List<ConnectivityResult>> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  /// Getter method that returns a [Stream] of [ConnectivityResult] which represents the
  /// changes in connectivity status. This [Stream] will emit a new
  /// [ConnectivityResult] value whenever the connectivity status changes.
  @override
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}
