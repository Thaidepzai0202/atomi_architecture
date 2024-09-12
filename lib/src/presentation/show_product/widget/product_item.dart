import 'package:atomi_architecture/src/domain/models/response/product_response.dart';
import 'package:atomi_architecture/src/presentation/show_detail/show_detail_product_route.dart';
import 'package:atomi_architecture/src/utils/constants/colors.dart';
import 'package:atomi_architecture/src/utils/constants/image.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final ProductResponse productResponse;

  const ProductItem({required this.productResponse, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ShowDetailProductRoute.push(),
      child: Container(
        height: 300,
        width: 200,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: AppColors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          )
        ], borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Column(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                // child: Fa.network(
                //   productResponse.imagePath ??
                //       "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg",
                //   fit: BoxFit.cover,
                // ),
                child: FadeInImage.assetNetwork(
                    placeholderCacheHeight: 50,
                    placeholderCacheWidth: 50,
                    placeholderScale: 0.3,
                    imageErrorBuilder: (context, error, stackTrace) =>
                        const SizedBox(),
                    fit: BoxFit.cover,
                    placeholder: Images.loadingGIF,
                    image: productResponse.imagePath ?? ""),
              ),
            ),
            Text(productResponse.name ?? "")
          ],
        ),
      ),
    );
  }
}
