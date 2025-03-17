import 'package:flutter/material.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/ui/options/button/option_button_decoration.dart';
import 'package:ndf/core/ui/options/controller/option_controller.dart';

class AppDropDownButton<T> extends StatefulWidget {
  final List<T>? items;
  final String hintText;
  final OptionController<T>? controller;
  final ValueChanged<T?>? onChanged;
  final DropdownButtonBuilder? selectedItemBuilder;

  final Widget Function(BuildContext context, T item) itemBuilder;

  const AppDropDownButton(
      {Key? key,
      this.items,
      this.controller,
      required this.hintText,
      this.onChanged,
      required this.itemBuilder,
      this.selectedItemBuilder})
      : super(key: key);

  @override
  State<AppDropDownButton<T>> createState() => _AppDropDownButtonState<T>();
}

class _AppDropDownButtonState<T> extends State<AppDropDownButton<T>> {
  @override
  Widget build(BuildContext context) {
    return OptionButtonDecoration(
      startPadding: 12,
      child: DropdownButton<T>(
        items: widget.items?.map((e) {
          return DropdownMenuItem<T>(
            value: e,
            child: widget.itemBuilder(context, e),
          );
        }).toList(),
        onChanged: _onChanged,
        isExpanded: true,
        borderRadius: Dimens.borderRadius5PX,
        value: widget.controller?.selectedValue,
        underline: const SizedBox(),
        hint: Text(
          widget.hintText,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: context.colors.titleGrey),
        ),
        icon: Icon(Icons.keyboard_arrow_down_rounded,
            size: 20, color: context.colors.secondary),
        elevation: 1,
        dropdownColor: context.colors.white,
        selectedItemBuilder: widget.selectedItemBuilder,
      ),
    );
  }

  void _onChanged(T? value) {
    widget.controller?.clear();
    setState(() {
      widget.controller?.selectedValue = value;
    });
    widget.onChanged?.call(value);
  }
}
