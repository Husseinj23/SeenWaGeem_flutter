import 'package:flutter/material.dart';

class GeographyGamesPage extends StatefulWidget {
  const GeographyGamesPage({super.key});

  @override
  State<GeographyGamesPage> createState() => _GeographyGamesPageState();
}

class _GeographyGamesPageState extends State<GeographyGamesPage> {
  String _searchQuery = '';

  // Default geography subjects data - matching the second and third images
  final List<Map<String, dynamic>> _defaultGeographySubjects = [
    {
      'name': 'عواصم',
      'questionCount': '10 سؤال',
      'color': const Color(0xFFFFD580), // Light orange
      'icon': Icons.public,
    },
    {
      'name': 'دول',
      'questionCount': '27 سؤال',
      'color': const Color(0xFFB39DDB), // Light purple
      'icon': Icons.flag,
    },
    {
      'name': 'جبال',
      'questionCount': '12 سؤال',
      'color': const Color(0xFF8E7CC3), // Medium purple
      'icon': Icons.terrain,
    },
    {
      'name': 'أنهار',
      'questionCount': '12 سؤال',
      'color': const Color(0xFFF8BBD0), // Light pink
      'icon': Icons.water,
    },
    {
      'name': 'بحار ومحيطات',
      'questionCount': '26 سؤال',
      'color': const Color(0xFFB3E5FC), // Light blue
      'icon': Icons.waves,
    },
    {
      'name': 'طقس ومناخ',
      'questionCount': '5 سؤال',
      'color': const Color(0xFFCE93D8), // Medium purple
      'icon': Icons.wb_sunny,
    },
    {
      'name': 'مساحات خضراء',
      'questionCount': '5 سؤال',
      'color': const Color(0xFFC5E1A5), // Green
      'icon': Icons.park,
    },
    {
      'name': 'مدن كبرى',
      'questionCount': '11 سؤال',
      'color': const Color(0xFFF8BBD0), // Pink
      'icon': Icons.location_city,
    },
    {
      'name': 'جغرافيا',
      'questionCount': '6 سؤال',
      'color': const Color(0xFFFFD580), // Orange
      'icon': Icons.map,
    },
  ];

  List<Map<String, dynamic>> get _filteredSubjects {
    if (_searchQuery.isEmpty) {
      return _defaultGeographySubjects;
    }
    return _defaultGeographySubjects
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
          'جغرافيا',
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
            // Geography subjects grid
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
                        return _buildGeographySubjectCard(
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

  Widget _buildGeographySubjectCard(
    ThemeData theme,
    String name,
    String questionCount,
    Color color,
    IconData icon,
  ) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to specific geography subject questions
        print('Tapped on geography subject: $name');
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
