import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../DesignSystem/Components/Buttons/ActionButton/action_button.dart';
import '../../DesignSystem/Components/Carousel/category_view_model.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, String> product; // Produto selecionado

  const ProductDetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryViewModel = Provider.of<CategoryViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Lógica do botão de carrinho
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Preço do produto
              Text(
                product['price']!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0ACF83),
                ),
              ),
              const SizedBox(height: 8),
              // Nome do produto
              Text(
                product['productName']!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              // Imagem do produto
              Center(
                child: Image.asset(
                  product['imagePath']!,
                  width: 247,
                  height: 285.30,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 24),
              // Botão Add to Cart
              SizedBox(
                width: double.infinity,
                child: ActionButton(
                  text: 'Add to Cart',
                  onPressed: () {
                    // Lógica para adicionar ao carrinho
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}