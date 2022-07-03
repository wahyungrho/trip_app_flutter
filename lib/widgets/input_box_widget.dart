part of 'widgets.dart';

class InputBoxWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  const InputBoxWidget({Key? key, @required this.controller, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (hintText != "")
          Text(
            hintText!,
            style: AppConfig.titleFontStyle,
          ),
        if (hintText != "")
          const SizedBox(
            height: 8,
          ),
        SizedBox(
          child: TextFormField(
            controller: controller,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please fill in your name";
              }
              return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppConfig.cardBorderRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppConfig.cardBorderRadius),
                borderSide: const BorderSide(
                  color: Color(0xff135DB3),
                  width: 1,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: AppConfig.defaultMargin - 10,
        ),
      ],
    );
  }
}
