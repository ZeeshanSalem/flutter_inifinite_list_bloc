import 'package:equatable/equatable.dart';
import 'package:flutter_infinite_list_bloc/posts/models/post.dart';

abstract class PostState extends Equatable{
  const PostState();

  @override
  List<Object> get props => [];
}

class PostInitial extends PostState{}

class PostFailure extends PostState{}

class PostSuccess extends PostState{
  final List<Post> posts;
  final bool hasReachedMax;

  const PostSuccess({ this.posts, this.hasReachedMax});

  PostSuccess copyWith({List<Post> post,
  bool hasReachedMax}){
    return PostSuccess(
      posts:  posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [posts, hasReachedMax];

  @override
  String toString() => 'PostSuccess { posts : ${posts.length}, hasReachMax: $hasReachedMax';
}