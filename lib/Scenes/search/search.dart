import 'package:flutter/material.dart';
import '../../DesignSystem/Components/Product/product_list_item.dart';
import '../../DesignSystem/Components/Product/product_list_item_view_model.dart';
import '../../DesignSystem/Components/Topbar/title_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitlePage(
        title: 'Search',
        leftIcon: Icons.arrow_back,
        rightIcon: Icons.shopping_cart_outlined,
        onLeftIconPressed: () {
          Navigator.pop(context);
        },
        onRightIconPressed: () {
          // Ação do carrinho
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search headphone',
                filled: true,
                fillColor: const Color(0xFFF6F6F6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Lastest search',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'DM Sans',
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: const [
                Icon(Icons.history, size: 20),
                SizedBox(width: 8),
                Text('TMA2 Wireless'),
                Spacer(),
                Icon(Icons.close, size: 20),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Icon(Icons.history, size: 20),
                SizedBox(width: 8),
                Text('Cable'),
                Spacer(),
                Icon(Icons.close, size: 20),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Popular product',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'DM Sans',
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ProductListItem(
                    viewModel: ProductListItemViewModel(
                      imageUrl: 'https://via.placeholder.com/150',
                      productName: 'TMA-2 Comfort Wireless',
                      price: 270.0,
                      rating: 4.6,
                      reviewCount: 86,
                    ),
                  ),
                  const SizedBox(height: 25),
                  ProductListItem(
                    viewModel: ProductListItemViewModel(
                      imageUrl: 'https://via.placeholder.com/150',
                      productName: 'TMA-2 DJ',
                      price: 270.0,
                      rating: 4.6,
                      reviewCount: 86,
                    ),
                  ),
                  const SizedBox(height: 25),
                  ProductListItem(
                    viewModel: ProductListItemViewModel(
                      imageUrl: 'https://via.placeholder.com/150',
                      productName: 'TMA-2 Move Wireless',
                      price: 270.0,
                      rating: 4.6,
                      reviewCount: 86,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
