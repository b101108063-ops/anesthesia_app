import 'package:flutter/material.dart';
import '../models/chapter.dart';
import 'chapter_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Chapter> _chapters = getAnaesthesiaChapters();
  List<Chapter> _filteredChapters = [];

  @override
  void initState() {
    super.initState();
    _filteredChapters = _chapters;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredChapters = _chapters;
      } else {
        _filteredChapters = _chapters.where((ch) {
          return ch.title.toLowerCase().contains(query) ||
              'chapter ${ch.number}'.contains(query);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Anaesthesia Guide',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: '搜尋章節...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: _filteredChapters.length,
        itemBuilder: (context, index) {
          final chapter = _filteredChapters[index];
          return _ChapterCard(chapter: chapter);
        },
      ),
    );
  }
}

class _ChapterCard extends StatelessWidget {
  final Chapter chapter;

  const _ChapterCard({required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.teal[700],
          child: Text(
            '${chapter.number}',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          chapter.title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          'Chapter ${chapter.number}',
          style: TextStyle(color: Colors.grey[500], fontSize: 12),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChapterScreen(chapter: chapter),
            ),
          );
        },
      ),
    );
  }
}
