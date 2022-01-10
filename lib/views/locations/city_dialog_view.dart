import '/import.dart';
import '/views/buttons/image_circle.dart';

class CityDialogView extends HookConsumerWidget {
  final String title, description, buttonText;
  final Image? image;

  const CityDialogView({
    Key? key,
    required this.title,
    required this.description,
    required this.buttonText,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationNotifierProvider);
    final locationNotifier = ref.watch(locationNotifierProvider.notifier);
    final String? countryCode = locationState.cityData.countryCode;
    const double padding = 16.0;
    const double avatarRadius = 45.0;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Stack(children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            top: avatarRadius + padding,
            bottom: padding,
            left: padding,
            right: padding,
          ),
          margin: const EdgeInsets.only(top: avatarRadius),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(padding),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(title, style: HeaderStyles.header2()),
              const SizedBox(height: 16.0),
              Text.rich(
                TextSpan(
                  style: HeaderStyles.header4(),
                  children: [
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Container(
                            padding: const EdgeInsets.only(right: 10),
                            child: Material(
                              elevation: 3,
                              child: Image.network(
                                  'https://flagcdn.com/32x24/$countryCode.png'),
                            ))),
                    TextSpan(
                      // text: locationState.cityData.name,
                      text: UtilService.shortenStr(locationState.cityData.name,
                          max: 40),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  const Spacer(),
                  // TODO: add onpressed
                  ImageCircle(
                    image: Image.asset("assets/images/utils/streetview.png",
                        width: 20),
                    iconColor: Colors.white,
                  ),
                  const Spacer(),
                  ImageCircle(
                    image: Image.asset("assets/images/utils/googlemap.png",
                        width: 20),
                    iconColor: Colors.white,
                  ),
                  const Spacer(),
                  ImageCircle(
                    image: Image.asset("assets/images/utils/twitter.png",
                        width: 30),
                    iconColor: Colors.white,
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 15.0),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    locationNotifier.switchCityDialog(false);
                  },
                  child: Text(buttonText),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          left: padding,
          right: padding,
          child: CircleAvatar(
            child: Icon(Icons.check, size: avatarRadius, color: Colors.white),
            // TODO: Define as a constant value
            backgroundColor: Color(0xFF2cb696),
            radius: avatarRadius,
          ),
        ),
      ]),
    );
  }
}