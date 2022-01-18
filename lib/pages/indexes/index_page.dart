import '/views/organisms/indexes/city_title_view.dart';

import '/import.dart';
// views
import '../../views/organisms/bottom_bars/three_bottom_bar_view.dart';
import '/views/organisms/settings/setting_view.dart';
import '/views/organisms/locations/location_view.dart';

class IndexPage extends HookConsumerWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationState = ref.watch(navigationNotifierProvider);
    final locationState = ref.watch(locationNotifierProvider);

    // Post request when leaving the settings page

    const List<Widget> _pageList = [
      LocationView(),
      LocationView(),
      SettingView(),
    ];

    // Title: flexible change
    List<Widget> _titleList = [
      locationState.isCitySucceeded
          ? const CityTitleView()
          : Text(
              'City Search',
              style: HeaderStyles.header2(),
            ),
      Text(
        'Keyword Search',
        style: HeaderStyles.header2(),
      ),
      Text(
        'Settings',
        style: HeaderStyles.header2(),
      ),
    ];

    return Scaffold(
        appBar: AppBar(title: _titleList[navigationState.currentIndex]),
        body: _pageList[navigationState.currentIndex],
        bottomNavigationBar: const ThreeBottomBarView());
  }
}