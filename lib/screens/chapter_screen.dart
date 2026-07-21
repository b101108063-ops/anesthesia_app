import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../models/chapter.dart';
import '../utils/content_loader.dart';

class ChapterScreen extends StatelessWidget {
  final Chapter chapter;

  const ChapterScreen({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CH${chapter.number}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('已加入書籤'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          ),
        ],
      ),
      body: FutureBuilder<String>(
        future: _loadChapterContent(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.grey),
                  const SizedBox(height: 16),
                  Text(
                    '無法載入內容',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            );
          }

          final content = snapshot.data ?? '';

          return Markdown(
            data: content,
            selectable: true,
            padding: const EdgeInsets.all(16),
            styleSheet: MarkdownStyleSheet(
              h1: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              h2: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              h3: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              p: const TextStyle(
                fontSize: 16,
                color: Colors.white70,
                height: 1.6,
              ),
              listBullet: const TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
              code: TextStyle(
                backgroundColor: Colors.grey[900],
                color: Colors.teal[300],
                fontSize: 14,
              ),
              codeblockDecoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(8),
              ),
              blockquote: TextStyle(
                color: Colors.grey[400],
                fontStyle: FontStyle.italic,
              ),
              blockquoteDecoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Colors.teal[700]!,
                    width: 4,
                  ),
                ),
              ),
              horizontalRuleDecoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[800]!, width: 1),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<String> _loadChapterContent() async {
    return await ContentLoader.loadChapter(chapter.filename);
  }
}
