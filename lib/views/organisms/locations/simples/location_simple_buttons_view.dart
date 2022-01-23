import '/import.dart';
import '/views/molecules/buttons/four_button_view.dart';

class LocationSimpleButtonsView extends HookConsumerWidget {
  const LocationSimpleButtonsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);

    return Positioned(
      left: 15,
      bottom: 18,
      child: FourButtonView(
          firstIcon:
              Image.asset("assets/images/utils/streetview.png", width: 20),
          secondIcon:
              Image.asset("assets/images/utils/googlemap.png", width: 20),
          thirdIcon: Image.asset("assets/images/utils/twitter.png", width: 20),
          fourthIcon: const Icon(
            Icons.info_outline,
            size: 22.0,
          ),
          firstOnPressed: () =>
              UrlService.launchUrl(locationState.cityExploreState.streetview),
          secondOnPressed: () =>
              UrlService.launchUrl(locationState.cityExploreState.googlemap),
          thirdOnPressed: () =>
              UrlService.launchUrl(locationState.cityExploreState.twitter),
          fourthOnPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CityDetailPage()))),
    );
  }
}