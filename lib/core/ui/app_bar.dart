import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/theme/color/app_colors.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/res.dart';

class CustomMoreScreenAppBar extends StatelessWidget {
  const CustomMoreScreenAppBar(this.title, {Key? key, this.withBack})
      : super(key: key);
  final bool? withBack;
  final String title;
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
        width: context.width,
        height: context.height / 6,
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
                              color: AppColors.of(context).white,
                              size: 20.0,
                            ),
                            Text(
                              Translate.s.more,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
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
                    Res.full_logo,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.of(context).white,
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
