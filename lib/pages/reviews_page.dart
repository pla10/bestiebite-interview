import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/reviews_bloc.dart';
import '../models/review.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recensioni')),
      body: BlocBuilder<ReviewsBloc, ReviewsState>(
        builder: (context, state) {
          if (state.reviews.isEmpty) {
            return const Center(child: Text('Nessuna recensione ancora.'));
          }
          return ListView.builder(
            itemCount: state.reviews.length,
            itemBuilder: (context, i) {
              final r = state.reviews[i];
              return ListTile(
                leading: CircleAvatar(child: Text('${r.rating}')),
                title: Text(r.author),
                subtitle: Text(r.text),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final id = DateTime.now().millisecondsSinceEpoch.toString();
          context.read<ReviewsBloc>().add(
                AddReview(
                  Review(
                    id: id,
                    author: 'Utente ${id.substring(id.length - 4)}',
                    rating: 4,
                    text: 'Ottimo, consigliato.',
                  ),
                ),
              );
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Recensione aggiunta!'),
              duration: Duration(seconds: 1),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
