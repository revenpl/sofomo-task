import 'package:flutter/material.dart';
import 'package:sofomo/domain/model/repository.dart';

class RepositoryListItem extends StatelessWidget {
  const RepositoryListItem({super.key, required this.repository, this.onTap});

  final Repository repository;
  final void Function(int id)? onTap;

  static const _padding = EdgeInsets.all(16);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(repository.id),
      child: Card(
        child: Padding(
          padding: _padding,
          child: Text(repository.name),
        ),
      ),
    );
  }
}
