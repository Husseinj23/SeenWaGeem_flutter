import 'package:flutter/material.dart';

class HistoryGamesPage extends StatefulWidget {
  const HistoryGamesPage({super.key});

  @override
  State<HistoryGamesPage> createState() => _HistoryGamesPageState();
}

class _HistoryGamesPageState extends State<HistoryGamesPage> {
  String _searchQuery = '';
  
  // Default history subjects data - matching the second image
  final List<Map<String, dynamic>> _defaultHistorySubjects = [
    {
      'name': 'تاريخ عالمي',
      'questionCount': '7 سؤال',
      'color': const Color(0xFFFFD580), // Light orange
      'icon': Icons.account_balance,
    },
    {
      'name': 'تاريخ مصر القديم',
      'questionCount': '5 سؤال',
      'color': const Color(0xFFB39DDB), // Light purple
      'icon': Icons.terrain,
    },
    {
      'name': 'العصور الوسطى',
      'questionCount': '5 سؤال',
      'color': const Color(0xFF8E7CC3), // Medium purple
      'icon': Icons.sports_mma,
    },
    {
      'name': 'الحضارة الرومانية',
      'questionCount': '5 سؤال',
      'color': const Color(0xFFF8BBD0), // Light pink
      'icon': Icons.location_city,
    },
    {
      'name': 'التاريخ الأمريكي',
      'questionCount': '5 سؤال',
      'color': const Color(0xFFB3E5FC), // Light blue
      'icon': Icons.flag,
    },
    {
      'name': 'تاريخ العلوم',
      'questionCount': '6 سؤال',
      'color': const Color(0xFFCE93D8), // Medium purple
      'icon': Icons.science,
    },
    {
      'name': 'تاريخ حديث',
      'questionCount': '4 سؤال',
      'color': const Color(0xFFC5E1A5), // Light green
      'icon': Icons.timeline,
    },
    {
      'name': 'تاريخ إسلامي',
      'questionCount': '5 سؤال',
      'color': const Color(0xFFF48FB1), // Hot pink
      'icon': Icons.mosque,
    },
  ];

  List<Map<String, dynamic>> get _filteredSubjects {
    if (_searchQuery.isEmpty) {
      return _defaultHistorySubjects;
    }
    return _defaultHistorySubjects
        .where((subject) => 
            subject['name'].toString().toLowerCase().contains(_searchQuery.toLowerCase()))
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
          'تاريخ',
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
                  hintStyle: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[600],
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // History subjects grid
            Expanded(
              child: _filteredSubjects.isEmpty
                  ? const Center(
                      child: Text('لا توجد نتائج'),
                    )
                  : GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.1,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: _filteredSubjects.length,
                      itemBuilder: (context, index) {
                        final subject = _filteredSubjects[index];
                        return _buildHistorySubjectCard(
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

  Widget _buildHistorySubjectCard(
    ThemeData theme,
    String name,
    String questionCount,
    Color color,
    IconData icon,
  ) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to specific history subject questions
        print('Tapped on history subject: $name');
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
              child: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
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
