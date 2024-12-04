import 'package:flutter/material.dart';
import '../../DesignSystem/Components/InputField/input_field.dart';
import '../../DesignSystem/Components/Product/product_list_item.dart';
import '../../DesignSystem/Components/Product/product_list_item_view_model.dart';
import '../../DesignSystem/Components/Topbar/title_page.dart';

class SearchPage extends StatelessWidget {
  final String searchQuery; // Parâmetro para receber a busca

  SearchPage({Key? key, required this.searchQuery}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    searchController.text = searchQuery; // Preenche o campo com a busca realizada

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TitlePage(
        title: 'Search',
        leftIcon: Icons.arrow_back,
        rightIcon: Icons.shopping_cart_outlined,
        onLeftIconPressed: () {
          Navigator.pop(context);
        },
        onRightIconPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputField(
              hintText: 'Search headphone',
              icon: const Icon(Icons.search, color: Color(0xFFBABABA)),
              controller: searchController,
              readOnly: false,
              onTap: () {}, onSubmitted: (value) {  },
            ),
            const SizedBox(height: 20),
            const Text(
              'Popular product',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: ProductListItemViewModel.sampleProducts.length,
                itemBuilder: (context, index) {
                  final product = ProductListItemViewModel.sampleProducts[index];
                  return ProductListItem(viewModel: product);
                },
                separatorBuilder: (context, index) => const SizedBox(height: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
