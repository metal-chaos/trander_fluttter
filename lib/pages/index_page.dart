import '/import.dart';
// views
import '/views/bottom_bars/three_bottom_bar.dart';
import '/views/logout_view.dart';
import '/views/location_view.dart';

class IndexPage extends HookConsumerWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationState = ref.watch(navigationNotifierProvider);

    const List<Widget> _pageList = [
      LocationView(),
      LocationView(),
      LogoutView(),
    ];

    return Scaffold(
        appBar: AppBar(
            title: Image.asset("assets/images/icons/logo.png", width: 160),
            backgroundColor: Colors.white),
        body: _pageList[navigationState.selectedIndex],
        bottomNavigationBar: const ThreeBottomBar());
  }
}