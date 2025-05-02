// tag_bar.dart
import 'package:flutter/material.dart';

class TagBar extends StatefulWidget {
  final ValueChanged<String> onTagSelected;

  const TagBar({Key? key, required this.onTagSelected}) : super(key: key);

  @override
  _TagBarState createState() => _TagBarState();
}

class _TagBarState extends State<TagBar> {
  String _selectedTag = '#热门话题';

  void _selectTag(String tag) {
    setState(() {
      _selectedTag = tag;
    });
    widget.onTagSelected(tag); // 回调通知父组件
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 48.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _buildChip('#热门话题'),
            SizedBox(width: 8),
            _buildChip('#美食分享'),
            SizedBox(width: 8),
            _buildChip('#旅行日记'),
            SizedBox(width: 8),
            _buildChip('#生活趣事'),
            SizedBox(width: 8),
            _buildChip('#科技前沿'),
            SizedBox(width: 8),
            _buildChip('#娱乐新闻'),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(String tag) {
    bool isSelected = tag == _selectedTag;
    return RawChip(
      label: Text(tag),
      backgroundColor: isSelected ? Colors.blue[300] : Colors.grey[200],
      selected: isSelected,
      onSelected: (_) {
        _selectTag(tag);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(8.0),
    );
  }

}
