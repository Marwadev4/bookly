import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 16.h),
      child: Column(
        children: [
          CustomSearchTextField(),
          const SizedBox(height: 16),
          const SizedBox(height: 16),
          const Text('Search Result', style: Styles.textStyle18),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
