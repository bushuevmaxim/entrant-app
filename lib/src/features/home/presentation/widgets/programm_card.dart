import 'package:flutter/material.dart';

import '../../domain/entities/programm.dart';

class ProgrammCard extends StatelessWidget {
  final VoidCallback? onTap;

  final Programm programm;

  const ProgrammCard({
    super.key,
    this.onTap,
    required this.programm,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            12.0,
          ),
        ),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                12.0,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(-1, 2),
              ),
            ],
          ),
          child: Stack(
            children: [
              PositionedDirectional(
                start: 16.0,
                top: 16.0,
                end: 16.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      programm.code,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      programm.name,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              PositionedDirectional(
                start: 16.0,
                bottom: 16.0,
                child: Ink(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        12.0,
                      ),
                    ),
                    color: Color.fromARGB(255, 190, 190, 190),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(8.0),
                    child: Text(
                      programm.educationLevel,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).cardColor,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
