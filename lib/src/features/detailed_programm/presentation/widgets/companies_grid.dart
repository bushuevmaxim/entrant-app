import 'package:flutter/material.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/programm.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CompaniesGrid extends StatelessWidget {
  final List<Company> companies;

  const CompaniesGrid({super.key, required this.companies});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      delegate: SliverChildBuilderDelegate((context, index) {
        final company = companies[index];
        return CompanyCard(company: company);
      }, childCount: companies.length),
    );
  }
}

class CompanyCard extends StatelessWidget {
  final Company company;

  const CompanyCard({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    final imageUrl = company.imageUrl;
    return Material(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.2,
          color: Theme.of(context).colorScheme.primary,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageUrl != null
                ? CachedNetworkImage(
                  imageUrl: imageUrl,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) {
                    return const _CompanyImagePlaceholder();
                  },
                )
                : const _CompanyImagePlaceholder(),

            const SizedBox(height: 12),
            Text(
              company.name,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class _CompanyImagePlaceholder extends StatelessWidget {
  const _CompanyImagePlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.business, size: 40, color: Colors.grey);
  }
}
