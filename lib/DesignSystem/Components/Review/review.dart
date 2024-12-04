import 'package:flutter/material.dart';
import 'review_view_model.dart';

class ReviewComponent extends StatelessWidget {
  final ReviewViewModel viewModel;

  const ReviewComponent({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Foto redonda
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              // Correção aqui:
            image: NetworkImage(viewModel.profileImageUrl), // Use 'profileImageUrl'

              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 13), // Espaço entre a imagem e o conteúdo
        // Conteúdo (nome, estrelas, comentário)
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nome do usuário
              Text(
                viewModel.userName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'DM Sans',
                  color: Colors.black,
                  height: 1.2, // Altura da linha
                ),
              ),
              const SizedBox(height: 5),
              // Avaliação em estrelas
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    index < viewModel.rating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(height: 15), // Espaço entre estrelas e comentário
              // Comentário
              Text(
                viewModel.comment,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'DM Sans',
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
