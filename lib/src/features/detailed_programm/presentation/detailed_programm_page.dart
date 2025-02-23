import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/programm.dart';

import '../../home/domain/repositories/programms_repository.dart';
import 'bloc/detailed_programm_bloc.dart';

class DetailedProgrammPage extends StatelessWidget {
  final String programmId;

  const DetailedProgrammPage({
    super.key,
    required this.programmId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailedProgrammBloc(
        programmRepository: context.read<IProgrammsRepository>(),
        programmId: programmId,
      )..add(
          const DetailedProgrammEvent.started(),
        ),
      child: const DetailedProgrammView(),
    );
  }
}

class DetailedProgrammView extends StatelessWidget {
  const DetailedProgrammView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailedProgrammBloc, DetailedProgrammState>(
        builder: (context, state) {
          return switch (state) {
            Initial() => const Center(child: CircularProgressIndicator()),
            Loading() => const Center(child: CircularProgressIndicator()),
            Success(programm: final programm) =>
              ProgrammContent(programm: programm),
            Failure() => const Center(child: Text('Error occurred')),
          };
        },
      ),
    );
  }
}

class ProgrammContent extends StatelessWidget {
  final Programm programm;

  const ProgrammContent({
    super.key,
    required this.programm,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ProgrammHeaderSliver(programm: programm),
        ProgrammDetailsSliver(programm: programm),
        ProgrammContentSliver(programm: programm),
        const SubmitApplicationSliver(),
      ],
    );
  }
}

class ProgrammHeaderSliver extends StatelessWidget {
  final Programm programm;

  const ProgrammHeaderSliver({
    super.key,
    required this.programm,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Color(0xFF9C6DFF)),
        onPressed: () => Navigator.pop(context),
      ),
      title: const Text(
        'Направления',
        style: TextStyle(
          color: Color(0xFF9C6DFF),
          fontSize: 20,
        ),
      ),
    );
  }
}

class ProgrammDetailsSliver extends StatelessWidget {
  final Programm programm;

  const ProgrammDetailsSliver({
    super.key,
    required this.programm,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              programm.name,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              programm.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 32),
            _buildInfoSection('Профиль', programm.name),
            _buildInfoSection('Срок обучения', '4 года'),
            _buildInfoSection('Форма обучения', programm.name),
            _buildInfoSection('Результат', 'Диплом государственного образца'),
            const SizedBox(height: 24),
            Text(
              'Описание',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              programm.name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            content,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}

class ProgrammContentSliver extends StatelessWidget {
  final Programm programm;

  const ProgrammContentSliver({
    super.key,
    required this.programm,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Text(
            'Обучение',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          ...List.generate(4, (index) => _buildCourseYear(context, index + 1)),
          const SizedBox(height: 24),
          Text(
            'Специальные возможности',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          ...[
            'Рассрочка на оплату обучения',
            'Перевод из другого вуза',
            'Трудоустройство и карьера',
            'Специальные условия и привилегии',
          ].map((title) => _buildExpandableItem(context, title)),
        ]),
      ),
    );
  }

  Widget _buildCourseYear(BuildContext context, int year) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey[200]!),
      ),
      child: ListTile(
        title: Text(
          '$year курс',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_down,
          color: Color(0xFF9C6DFF),
        ),
        onTap: () {},
      ),
    );
  }

  Widget _buildExpandableItem(BuildContext context, String title) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey[200]!),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_down,
          color: Color(0xFF9C6DFF),
        ),
        onTap: () {},
      ),
    );
  }
}

class SubmitApplicationSliver extends StatelessWidget {
  const SubmitApplicationSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Подайте заявку сейчас',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Имя',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                hintText: 'Номер телефона',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9C6DFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                minimumSize: const Size(double.infinity, 48),
              ),
              child: const Text(
                'Отправить',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank, color: Colors.grey[400]),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Согласен на обработку персональных данных, получение рассылок, а также с Политикой конфиденциальности',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
