import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int currentIndex = 0;
  List<Color> colorsList = [
    Color(0xffBE6E46),
    Color(0xff6EBECE),
    Color(0xff89A3A1),
    Color(0xff61CBE5),
    Color(0xffDCE1E9),
    Color(0xff53D8FB),
    Color(0xffD4AFB9),
    Color(0xff66C3FF),
    Colors.white,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color =
                  colorsList[index];
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: colorsList[index],
            ),
          );
        },
        separatorBuilder:
            (BuildContext context, int index) {
              return SizedBox(width: 10);
            },
      ),
    );
  }
}
