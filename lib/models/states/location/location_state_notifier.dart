import '/import.dart';
import 'dart:async';
import '/services/location_service.dart';
import '/models/models.dart';

final locationNotifierProvider =
    StateNotifierProvider<LocationStateNotifier, LocationState>(
  (ref) => LocationStateNotifier(),
);

class LocationStateNotifier extends StateNotifier<LocationState> {
  LocationStateNotifier()
      : super(LocationState(
            mapController: Completer(),
            settingData: const SettingState(),
            cityData: const CityState()));

  Future<void> initMapAction() async {
    state = state.copyWith(mapController: Completer());
  }

  Future<void> switchBusy(bool isBusy) async {
    state = state.copyWith(isBusy: isBusy);
  }

  Future<void> getCurrentLocation() async {
    try {
      state = await LocationService().getCurrentLocation(state);
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      state = state.copyWith(isBusy: false, errorMessage: e.toString());
    }
  }

  Future<void> shiftCameraCurrentPosition() async {
    try {
      LocationService().shiftCameraPosition(state, state.currentLocation);
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      state = state.copyWith(isBusy: false, errorMessage: e.toString());
    }
  }

  Future<void> getCity(String? idToken) async {
    try {
      state = await LocationService().getCity(state, idToken);
      state = await LocationService().setNewLocation(state);
      state = await LocationService().setMarker(state);
      await LocationService().shiftCameraPosition(state, state.newLocation);
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      state = state.copyWith(isBusy: false, errorMessage: e.toString());
    }
  }

  Future<void> getSetting(String? idToken) async {
    try {
      state = await LocationService().getSetting(state, idToken);
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      state = state.copyWith(isBusy: false, errorMessage: e.toString());
    }
  }

  Future<void> setRange(RangeValues newRange) async {
    state = state.copyWith(
        settingData: SettingState.fromJson({
      'minDistance': newRange.start.toInt(),
      'maxDistance': newRange.end.toInt()
    }));
  }

  Future<void> postSetting(
      String? idToken, NavigationState navigationState) async {
    // Request only when shifting from page three
    if (navigationState.currentIndex == 2) {
      return;
    }

    if (navigationState.prevIndex != 2) {
      return;
    }

    try {
      state = await LocationService().postSetting(state, idToken);
    } on Exception catch (e, s) {
      debugPrint('login error: $e - stack: $s');
      state = state.copyWith(isBusy: false, errorMessage: e.toString());
    }
  }
}
