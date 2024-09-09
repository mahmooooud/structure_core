import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:structure_core/core/ui/svg_assets.dart';

class CustomMoreScreenAppBar extends StatelessWidget {
  const CustomMoreScreenAppBar(this.title, {Key? key, this.withBack,required this.appLogo})
      : super(key: key);
  final bool? withBack;
  final String title;
  final String appLogo;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(17.0),
        bottomRight: Radius.circular(17.0),
      ),
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(17.0),
              bottomRight: Radius.circular(17.0),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  withBack != null
                      ? InkWell(
                          onTap: () {},
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            Text(
                              "More",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 18.0,
                                  ),
                            )
                          ]),
                        )
                      : SizedBox(
                          width: 10,
                        ),
                  SvgAssets.getWidget(
                    appLogo,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
