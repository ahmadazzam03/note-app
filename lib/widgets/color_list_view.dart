import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  List<Color> color = [
    Color(0xFFB3E5FC),
    Color(0xFFB9F6CA),
    Color(0xFFFFF9C4),
    Color(0xFFFFCCBC),
    Color(0xFFE1BEE7),
    Color(0xFFF8BBD0),
    Color(0xFFEEEEEE),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 6),
        itemCount: color.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = color[index];
              setState(() {});
            },
            child: ColorItem(
              color: color[index],
              isActive: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
