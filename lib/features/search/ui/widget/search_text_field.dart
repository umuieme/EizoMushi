import 'package:eizo_mushi/features/common/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchTextField extends HookWidget {
  const SearchTextField({required this.onSearch, super.key});
  final void Function(String?)? onSearch;

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    final hasSearchText = useState(false);
    useEffect(
      () {
        searchController.addListener(() {
          if (hasSearchText.value != searchController.text.isNotEmpty) {
            hasSearchText.value = searchController.text.isNotEmpty;
          }
        });
        return null;
      },
      [searchController],
    );

    return AppTextField(
      controller: searchController,
      suffixIcon: IconButton(
        onPressed: () {
          searchController.clear();
          onSearch?.call('');
        },
        icon: Icon(hasSearchText.value ? Icons.close : Icons.search),
      ),
      hint: 'Search Anime',
      onChanged: onSearch,
    );
  }
}
