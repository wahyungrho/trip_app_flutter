part of 'pages.dart';

class DetailProductPage extends StatefulWidget {
  final ProductModel? productModel;
  const DetailProductPage({Key? key, @required this.productModel})
      : super(key: key);

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.productModel!.name!),
      ),
    );
  }
}
