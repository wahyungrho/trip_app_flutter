part of 'widgets.dart';

class CardProductWidget extends StatelessWidget {
  final String? imageAssets;
  final Widget? child;
  const CardProductWidget({Key? key, this.imageAssets, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5 - AppConfig.defaultMargin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppConfig.cardBorderRadius),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppConfig.cardBorderRadius),
                      topRight: Radius.circular(AppConfig.cardBorderRadius)),
                  child: Image.asset(
                    // Provide an image of the assets that have been registered
                    imageAssets!,
                    fit: BoxFit.cover,
                    height: 110,
                    frameBuilder: (context, child, frame, _) {
                      return AnimatedOpacity(
                        duration: const Duration(milliseconds: 1000),
                        opacity: frame == null ? 0 : 1,
                        child: child,
                      );
                    },
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // You can provide child customization in this Widget
          child ?? Container(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
