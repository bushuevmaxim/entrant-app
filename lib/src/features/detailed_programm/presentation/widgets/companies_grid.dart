import 'package:flutter/material.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/programm.dart';

class CompaniesGrid extends StatelessWidget {
  final List<Company> companies;

  const CompaniesGrid({
    super.key,
    required this.companies,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        childAspectRatio: 1.5,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final company = companies[index];
          return CompanyCard(company: company);
        },
        childCount: companies.length,
      ),
    );
  }
}

class CompanyCard extends StatelessWidget {
  final Company company;

  const CompanyCard({
    super.key,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (company.imageUrl != null) ...[
              Image.network(
                company.imageUrl!,
                height: 40,
                width: 40,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.business,
                    size: 40,
                    color: Colors.grey,
                  );
                },
              ),
              const SizedBox(height: 12),
            ] else ...[
              const Icon(
                Icons.business,
                size: 40,
                color: Colors.grey,
              ),
              const SizedBox(height: 12),
            ],
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
