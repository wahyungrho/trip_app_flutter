part of 'widgets.dart';

class RowTemplateWidget extends StatelessWidget {
  final String? title;
  final String? value;
  const RowTemplateWidget({Key? key, this.title, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title ?? "",
          style: AppConfig.subTitleFontStyle
              .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Text(
            value ?? "",
            textAlign: TextAlign.end,
            style: AppConfig.titleFontStyle
                .copyWith(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
