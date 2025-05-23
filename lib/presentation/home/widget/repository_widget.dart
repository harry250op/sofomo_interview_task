import 'package:flutter/material.dart';
import 'package:sofomo_github/domain/models/repository_model.dart';

class RepositoryWidget extends StatelessWidget {
  const RepositoryWidget({
    super.key,
    required this.repository,
  });

  final RepositoryModel repository;

  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Column(
        spacing: 8,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  repository.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                repository.isPrivate ? 'Private' : 'Public',
                style: TextStyle(
                  fontSize: 14,
                  color: repository.isPrivate ? Colors.red : Colors.green,
                ),
              ),
            ],
          ),
          Text(
            repository.description,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Row(
            children: [
              Flexible(
                child: Row(
                  children: [
                    Icon(Icons.code),
                    Flexible(
                      child: Text(
                        repository.language,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  children: [
                    Icon(Icons.star,
                        color: repository.watchers > 10
                            ? Colors.yellow
                            : Colors.grey),
                    Text(
                      repository.watchers.toString(),
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  children: [
                    Icon(Icons.call_split),
                    Flexible(
                      child: Text(
                        repository.forks.toString(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ));
}
