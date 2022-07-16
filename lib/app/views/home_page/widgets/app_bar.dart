import 'package:appointment/app/view_model/home_bloc.dart';
import 'package:appointment/helpers/constants/colors.dart';
import 'package:appointment/helpers/widgets/icon_background.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => context.read<HomeCubit>().increment(),
          child: const IconBackground(
              child:  Icon(
            Entypo.grid,
            size: 37,
            color: secondaryColor,
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
               Text(
                "home.current_location".tr(),
                textAlign: TextAlign.center,
                style:const TextStyle(color: secondaryColor),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Icon(
                    MaterialIcons.location_on,
                    size: 16,
                    color: mainColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    //   "${i}",
                    "Cairo, Egypt",
                    style: TextStyle(
                        color: thirdColor, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () => context.read<HomeCubit>().decrement(),
          child: IconBackground(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo=')),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
