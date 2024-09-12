import 'package:atomi_architecture/src/domain/models/response/product_response.dart';
import 'package:atomi_architecture/src/presentation/show_detail/show_detail_product_route.dart';
import 'package:atomi_architecture/src/presentation/show_product/widget/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../cubit/show_product_cubit.dart';

class ShowProductScreen extends StatefulWidget {
  const ShowProductScreen({super.key});

  @override
  State<ShowProductScreen> createState() => _ShowProductScreenState();
}

class _ShowProductScreenState extends State<ShowProductScreen> {
  ShowProductCubit? _cubit;
  List<ProductResponse> listProduct = [];

  @override
  void initState() {
    super.initState();
    _cubit = context.read<ShowProductCubit>();
    _cubit!.getListProduct(); // Gọi hàm lấy danh sách sản phẩm
    logger.i("init screen");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Title"),
      ),
      body: Column(
        children: [
          InkWell(
              onTap: () {
                ShowDetailProductRoute.push();
              },
              child: const Text("Product")),
          BlocBuilder<ShowProductCubit, ShowProductState>(
            builder: (context, state) {
              if (state is ShowProductSuccessed) {
                listProduct = state.listProduct;
              }

              bool isLoading = state is ShowProductInitial;

              return SizedBox(
                height: 300,
                child: Skeletonizer(
                  enabled: isLoading,
                  enableSwitchAnimation: true,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: isLoading ? 5 : listProduct.length,
                    // Hiển thị skeleton với 5 item giả lập
                    itemBuilder: (context, index) {
                      return ProductItem(
                        productResponse: listProduct.isEmpty
                            ? ProductResponse()
                            : listProduct[index],
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
