part of 'widgets.dart';

class TextTitleWidget extends StatelessWidget {
  final String text;
  const TextTitleWidget(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppConfig.titleFontStyle.copyWith(fontWeight: FontWeight.w500),
    );
  }
}
