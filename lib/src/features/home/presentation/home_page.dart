import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Направления подготовки',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 12.0),
            sliver: SliverList.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 200,
                  child: InkWell(
                    onTap: () {
                      context.go(
                        '/details',
                      );
                    },
                    child: Card(
                      child:
                          Center(child: Text('Направление с индексом $index')),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
