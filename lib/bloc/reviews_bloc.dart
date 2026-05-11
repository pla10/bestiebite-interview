import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/review.dart';

// ─────────────────────────────────────────────────────────────
// Events
// ─────────────────────────────────────────────────────────────
sealed class ReviewsEvent extends Equatable {
  const ReviewsEvent();
  @override
  List<Object?> get props => [];
}

class AddReview extends ReviewsEvent {
  final Review review;
  const AddReview(this.review);
  @override
  List<Object?> get props => [review];
}

// ─────────────────────────────────────────────────────────────
// State
// ─────────────────────────────────────────────────────────────
class ReviewsState extends Equatable {
  final List<Review> reviews;
  final bool isLoading;

  const ReviewsState({this.reviews = const [], this.isLoading = false});

  ReviewsState copyWith({List<Review>? reviews, bool? isLoading}) {
    return ReviewsState(
      reviews: reviews ?? this.reviews,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [reviews, isLoading];
}

// ─────────────────────────────────────────────────────────────
// Bloc
// ─────────────────────────────────────────────────────────────
class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  ReviewsBloc() : super(ReviewsState(reviews: _seedReviews())) {
    on<AddReview>(_onAddReview);
  }

  static List<Review> _seedReviews() => List<Review>.from([
        const Review(
          id: '1',
          author: 'Mario Rossi',
          rating: 5,
          text: 'Pizza spaziale, tornerò sicuramente!',
        ),
        const Review(
          id: '2',
          author: 'Giulia Bianchi',
          rating: 4,
          text: 'Buono ma un po\' caro.',
        ),
      ]);

  void _onAddReview(AddReview event, Emitter<ReviewsState> emit) {
    state.reviews.add(event.review);
    emit(state.copyWith(reviews: state.reviews));
  }
}
