import 'package:flutter/material.dart';

class ScienceGamesPage extends StatefulWidget {
  const ScienceGamesPage({super.key});

  @override
  State<ScienceGamesPage> createState() => _ScienceGamesPageState();
}

class _ScienceGamesPageState extends State<ScienceGamesPage> {
  String _searchQuery = '';

  // Default science subjects data - fallback when API data is not available
  final List<Map<String, dynamic>> _defaultScienceSubjects = [
    {
      'name': 'فيزياء',
      'questionCount': '5 سؤال',
      'color': const Color(0xFFFFD580), // Light Orange
      'icon': Icons.science,
    },
    {
      'name': 'كيمياء',
      'questionCount': '5 سؤال',
      'color': const Color(0xFFB39DDB), // Light Purple
      'icon': Icons.local_florist,
    },
    {
      'name': 'أحياء',
      'questionCount': '5 سؤال',
      'color': const Color(0xFF8E7CC3), // Deep Purple
      'icon': Icons.pets,
    },
    {
      'name': 'علم الفلك',
      'questionCount': '12 سؤال',
      'color': const Color(0xFFF8BBD0), // Light Pink
      'icon': Icons.star,
    },
    {
      'name': 'علم الأرض',
      'questionCount': '10 سؤال',
      'color': const Color(0xFFB3E5FC), // Light Blue
      'icon': Icons.public,
    },
    {
      'name': 'علم الوراثة',
      'questionCount': '5 سؤال',
      'color': const Color(0xFF795548), // Brown
      'icon': Icons.psychology,
    },
    {
      'name': 'علم البيئة',
      'questionCount': '9 سؤال',
      'color': const Color(0xFFC5E1A5), // Green
      'icon': Icons.eco,
    },
    {
      'name': 'رياضيات',
      'questionCount': '5 سؤال',
      'color': const Color(0xFFF8BBD0), // Pink
      'icon': Icons.calculate,
    },
    {
      'name': 'اقتصاد',
      'questionCount': '3 سؤال',
      'color': const Color(0xFFFF9800), // Orange
      'icon': Icons.trending_up,
    },
  ];

  List<Map<String, dynamic>> get _filteredSubjects {
    if (_searchQuery.isEmpty) {
      return _defaultScienceSubjects;
    }
    return _defaultScienceSubjects
        .where(
          (subject) => subject['name'].toString().toLowerCase().contains(
            _searchQuery.toLowerCase(),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'علوم',
          style: theme.textTheme.titleLarge?.copyWith(
            color: const Color(0xFF9C27B0), // Purple
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search bar
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFF3E5F5), // Light purple
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                textDirection: TextDirection.rtl,
                onChanged: (query) {
                  setState(() {
                    _searchQuery = query;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'البحث',
                  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16),
                  prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Science subjects grid
            Expanded(
              child: _filteredSubjects.isEmpty
                  ? const Center(child: Text('لا توجد نتائج'))
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.1,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                      itemCount: _filteredSubjects.length,
                      itemBuilder: (context, index) {
                        final subject = _filteredSubjects[index];
                        return _buildDefaultScienceSubjectCard(
                          theme,
                          subject['name'] as String,
                          subject['questionCount'] as String,
                          subject['color'] as Color,
                          subject['icon'] as IconData,
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDefaultScienceSubjectCard(
    ThemeData theme,
    String name,
    String questionCount,
    Color color,
    IconData icon,
  ) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to specific subject questions
        print('Tapped on science subject: $name');
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: 0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(icon, color: Colors.white, size: 24),
            ),
            const SizedBox(height: 12),
            // Subject name
            Text(
              name,
              style: theme.textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            // Question count
            Text(
              questionCount,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.white.withValues(alpha: 0.9),
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
