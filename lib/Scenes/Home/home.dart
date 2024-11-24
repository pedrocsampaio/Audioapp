import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../DesignSystem/Components/Cards/product.dart';
import '../../DesignSystem/Components/Cards/product_view_model.dart';
import '../../DesignSystem/Components/Carousel/carousel.dart';
import '../../DesignSystem/Components/Carousel/carousel_view_model.dart';
import '../../DesignSystem/Components/Carousel/category.dart';
import '../../DesignSystem/Components/Carousel/category_view_model.dart';
import '../../DesignSystem/Components/InputField/input_field.dart';
import '../../DesignSystem/Components/InputField/input_field_view_model.dart';

class HomeScreen extends StatelessWidget {
  // Controlador do campo de pesquisa
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Hi, Andrea",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
            height: 0.08,
            letterSpacing: 0.20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What are you looking for today?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                      letterSpacing: 0.20,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Consumer<StyledInputFieldViewModel>(
                    builder: (context, viewModel, child) {
                      return InputField(
                        hintText: "Search headphone",
                        controller: searchController, // Adicionado
                        icon: const Icon(Icons.search, color: Color(0xFFBABABA)),
                      );
                    },
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
            // Container com bordas arredondadas e padding
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFF3F3F3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.only(
                top: 32,
                bottom: 24,
                left: 24,
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Categorias
                  Consumer<CategoryViewModel>(
                    builder: (context, viewModel, child) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            viewModel.categories.length,
                            (index) => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: CategoryItem(
                                title: viewModel.categories[index],
                                isSelected: index == viewModel.selectedIndex,
                                onTap: () {
                                  viewModel.selectCategory(index);
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // Carrossel de banners
                  Consumer<List<CarouselBannerViewModel>>(
                    builder: (context, bannerList, child) {
                      return SizedBox(
                        height: 200,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: bannerList.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 15),
                          itemBuilder: (context, index) {
                            final banner = bannerList[index];
                            return CarouselBanner(
                              title: banner.title,
                              subtitle: banner.subtitle,
                              imagePath: banner.imagePath,
                              onPressed: banner.onPressed,
                            );
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // Título "Featured Products" com "See All"
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Featured Products",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xFF7F7F7F),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Produtos em destaque
                  Consumer<ProductViewModel>(
                    builder: (context, productViewModel, child) {
                      return SizedBox(
                        height: 250,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: productViewModel.products.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 15),
                          itemBuilder: (context, index) {
                            final product = productViewModel.products[index];
                            return ProductCard(
                              imagePath: product["imagePath"]!,
                              productName: product["productName"]!,
                              price: product["price"]!,
                              rating: product["rating"]!,
                              reviews: product["reviews"]!,
                              onTap: () {
                                print("Selected: ${product["productName"]}");
                              },
                              title: '',
                            );
                          },
                        ),
                      );
                    },
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
