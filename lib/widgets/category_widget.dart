part of 'widgets.dart';

class CategoryWidget extends StatelessWidget {
  final String imageAssets;
  final String? nameCategory;
  final Function? onTap;
  final bool? selected;
  const CategoryWidget(this.imageAssets,
      {Key? key, this.nameCategory, this.onTap, this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppConfig.cardBorderRadius),
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      imageAssets,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              nameCategory ?? "",
              style: AppConfig.subTitleFontStyle.copyWith(
                  fontWeight:
                      (selected ?? false) ? FontWeight.w600 : FontWeight.w400,
                  color: (selected ?? false)
                      ? Theme.of(context).primaryColor
                      : Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
