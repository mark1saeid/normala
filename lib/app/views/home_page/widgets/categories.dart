import 'package:appointment/helpers/constants/colors.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //  scrollDirection: Axis.horizontal,
        children: const [
          CategoryItem(
            iconData: Icons.document_scanner_rounded,
            categoryName: "Covid 21",
          ),
          CategoryItem(
            iconData: Icons.local_hospital,
            categoryName: "Hospital",
          ),
          CategoryItem(
            iconData: Icons.donut_large_sharp,
            categoryName: "drugs",
          ),
          CategoryItem(
            iconData: Icons.ac_unit,
            categoryName: "Pill",
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
 final IconData iconData;
 final String categoryName;
 const CategoryItem({Key key, @required this.iconData, @required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: textCard),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height,
                  child: Icon(
                    iconData,
                    color: mainColor,
                  ))),
        ),
        const SizedBox(
          height: 8,
        ),
        Expanded(
            flex: 1,
            child: Text(
              categoryName,
              style: const TextStyle(
                color: mainColor,
                fontWeight: FontWeight.w500,
              ),
            ))
      ],
    );
  }
}
