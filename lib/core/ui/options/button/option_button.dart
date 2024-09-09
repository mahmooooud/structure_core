import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structure_core/core/common/gaps.dart';
import 'package:provider/provider.dart';
import 'package:structure_core/core/ui/options/button/option_button_decoration.dart';
import 'package:structure_core/core/ui/options/controller/option_controller.dart';

class OptionsButton<T> extends StatefulWidget {
  final String hintText;
  final OptionController<T> controller;
  final String? iconPath;
  final Function(BuildContext context, T item) valueBuilder;
  final VoidCallback onPressed;
  final bool coloredIconWhenValueFilled;

  const OptionsButton(
      {Key? key,
      required this.hintText,
      this.iconPath,
      required this.controller,
      required this.valueBuilder,
      required this.onPressed,
      this.coloredIconWhenValueFilled = false})
      : super(key: key);

  @override
  State<OptionsButton<T>> createState() => _OptionsButtonState<T>();
}

class _OptionsButtonState<T> extends State<OptionsButton<T>> {
  @override
  Widget build(BuildContext context) {
    if (widget.iconPath != null) assert(widget.iconPath!.toLowerCase().endsWith('svg'));
    return ChangeNotifierProvider<OptionController<T>>.value(
      value: widget.controller,
      child: Consumer<OptionController<T>>(
        builder: (context, value, child) {
          return InkWell(
            onTap: widget.onPressed,
            child: OptionButtonDecoration(
              child: Row(
                children: [
                  /// Prefix with width 44 like TextFormField
                  Expanded(
              child: Row(
                children: [if (widget.iconPath != null)
                    SizedBox(
                      width: 44,
                      child: SizedBox.square(
                          dimension: 18,
                          child: SvgPicture.asset(
                            widget.iconPath!,
                            color: widget.coloredIconWhenValueFilled && widget.controller.selectedValue != null
                                ? Theme.of(context).colorScheme.primary
                                : Colors.grey,
                            fit: BoxFit.contain,

                    )),
                    ),
                  Gaps.hGap12,

                  /// Value
                  LimitedBox(child: _buildValue(context)),
                ],
              ),
            ),

                  /// Suffix
                  Icon(Icons.keyboard_arrow_down_rounded,
                      size: 20, color: Theme.of(context).colorScheme.secondary)
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildValue(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.controller,
        builder: (context, __) {
          return widget.controller.selectedValue == null
              ? Text(
                  widget.hintText,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                )
              : widget.valueBuilder(context, widget.controller.selectedValue as T);
        });
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }
}
