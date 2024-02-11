import '/import.dart';
import '/views/molecules/dialogs/succeed_dialog_view.dart';
import '/views/molecules/dialogs/idea_dialog_view.dart';

class LocationDialogViewController {
  // City dialog
  static void showCityDialog(BuildContext context, LocationState locationState,
      LocationStateNotifier locationNotifier) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final countryCode = locationState.cityData.countryCode;
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext childContext) {
            return SucceedDialogView(
              // TODO: need feadback
              title: 'Found succcessfully',
              buttonText: 'Close',
              name: locationState.cityData.name,
              image: Image.network('https://flagcdn.com/h20/$countryCode.png'),
              leftIcon: Image.asset(
                "assets/images/utils/streetview.png",
                width: 20,
              ),
              centerIcon:
                  Image.asset("assets/images/utils/googlemap.png", width: 20),
              rightIcon:
                  Image.asset("assets/images/utils/twitter.png", width: 20),
              leftOnPressed: () =>
                  UrlService.openUrl(locationState.cityExploreState.streetview),
              centerOnPressed: () =>
                  UrlService.openUrl(locationState.cityExploreState.googlemap),
              rightOnPressed: () =>
                  UrlService.openUrl(locationState.cityExploreState.twitter),
              closeOnPressed: () {
                locationNotifier.switchCityDialog(false);
                Navigator.pop(context);
              },
            );
          });
    });
  }

  // Keyword search dialog
  static void showKeywordSearchDialog(BuildContext context,
      LocationState locationState, LocationStateNotifier locationNotifier) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final countryCode = locationState.keywordSearchData.countryCode;
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext childContext) {
            return SucceedDialogView(
              // TODO: need feadback
              title: 'Found succcessfully',
              buttonText: 'Close',
              name: locationState.keywordSearchData.name,
              image: Image.network('https://flagcdn.com/h20/$countryCode.png'),
              leftIcon: Image.asset(
                "assets/images/utils/streetview.png",
                width: 20,
              ),
              centerIcon:
                  Image.asset("assets/images/utils/googlemap.png", width: 20),
              rightIcon:
                  Image.asset("assets/images/utils/twitter.png", width: 20),
              leftOnPressed: () => UrlService.openUrl(
                  locationState.keywordSearchExploreState.streetview),
              centerOnPressed: () => UrlService.openUrl(
                  locationState.keywordSearchExploreState.googlemap),
              rightOnPressed: () => UrlService.openUrl(
                  locationState.keywordSearchExploreState.twitter),
              closeOnPressed: () {
                locationNotifier.switchKeywordSearchDialog(false);
                Navigator.pop(context);
              },
            );
          });
    });
  }

  static void show404Dialog(
      BuildContext context, LocationStateNotifier locationNotifier) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext childContext) {
            return IdeaDialogView(
              title: 'Try it once more',
              description:
                  'We couldn’t find a location. Let\'s give it another shot!',
              buttonText: 'Close',
              closeOnPressed: () {
                locationNotifier.switch404Dialog(false);
                Navigator.pop(context);
              },
            );
          });
    });
  }
}
