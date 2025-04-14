import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../home/domain/entities/programm.dart';

class GraduateCard extends StatelessWidget {
  final Graduate graduate;

  const GraduateCard({super.key, required this.graduate});

  @override
  Widget build(BuildContext context) {
    final photo = graduate.photo;
    return SizedBox(
      width: 180,
      child: Material(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.2,
            color: Theme.of(context).colorScheme.primary,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            photo != null
                ? CachedNetworkImage(
                  imageUrl: photo,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorWidget:
                      (context, url, error) =>
                          const _GraduateImagePlaceholder(),
                )
                : const _GraduateImagePlaceholder(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${graduate.firstName} ${graduate.secondName}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    graduate.role,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    graduate.companyName,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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

class _GraduateImagePlaceholder extends StatelessWidget {
  const _GraduateImagePlaceholder();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ColoredBox(
        color: Colors.grey.withValues(alpha: 0.3),
        child: const Icon(Icons.person, size: 48, color: Colors.grey),
      ),
    );
  }
}
