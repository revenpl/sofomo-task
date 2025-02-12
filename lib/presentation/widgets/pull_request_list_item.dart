import 'package:flutter/material.dart';
import 'package:sofomo/domain/model/pull_request.dart';

class PullRequestListItem extends StatelessWidget {
  const PullRequestListItem({super.key, required this.pullRequest});

  final PullRequest pullRequest;

  static const _padding = EdgeInsets.all(16.0);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: _padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('id: ${pullRequest.id}'),
            Text('title: ${pullRequest.title}'),
            Text('state: ${pullRequest.state}'),
          ],
        ),
      ),
    );
  }
}
