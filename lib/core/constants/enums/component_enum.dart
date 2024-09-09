import 'package:freezed_annotation/freezed_annotation.dart';

enum EditComponentsEnum {
  @JsonValue('TextInputComponent')
  TextInputComponent,
  @JsonValue('NumberComponent')
  NumberComponent,
  @JsonValue('PasswordInputComponent')
  PasswordInputComponent,
  @JsonValue('LabelComponent')
  LabelComponent,
  @JsonValue('LongTextComponent')
  LongTextComponent,
  @JsonValue('DateComponent')
  DateComponent,
  @JsonValue('DateTimeComponent')
  DateTimeComponent,
  @JsonValue('YearComponent')
  YearComponent,
  @JsonValue('MonthYearComponent')
  MonthYearComponent,
  @JsonValue('BooleanComponent')
  BooleanComponent,
  @JsonValue('MonthComponent')
  MonthComponent,
  @JsonValue('FileComponent')
  FileComponent,
  @JsonValue('ImageComponent')
  ImageComponent,
  @JsonValue('CategoryComponent')
  CategoryComponent,
  @JsonValue('VideoComponent')
  VideoComponent,
  @JsonValue('DocumentComponent')
  DocumentComponent,
  @JsonValue('IconComponent')
  IconComponent,
  @JsonValue('SwitchComponent')
  SwitchComponent,
  @JsonValue('LocalizedTextInputComponent')
  LocalizedTextInputComponent,
  @JsonValue('RelationComponent')
  RelationComponent,
  @JsonValue('BlockComponent')
  BlockComponent,
  @JsonValue('TimeComponent')
  TimeComponent,
  UNKNOWN,
}

enum ViewComponentsEnum {
  @JsonValue('BlockComponent')
  BlockComponent,
  @JsonValue('ViewLabelComponent')
  ViewLabelComponent,
  @JsonValue('ViewTextComponent')
  ViewTextComponent,
  @JsonValue('ViewLongTextComponent')
  ViewLongTextComponent,
  @JsonValue('ViewDateComponent')
  ViewDateComponent,
  @JsonValue('ViewNumberComponent')
  ViewNumberComponent,
  @JsonValue('ViewDateTimeComponent')
  ViewDateTimeComponent,
  @JsonValue('ViewTimeComponent')
  ViewTimeComponent,
  @JsonValue('ViewPhoneComponent')
  ViewPhoneComponent,
  @JsonValue('ViewYearComponent')
  ViewYearComponent,
  @JsonValue('ViewMonthYearComponent')
  ViewMonthYearComponent,
  @JsonValue('ViewBooleanComponent')
  ViewBooleanComponent,
  @JsonValue('ViewMonthComponent')
  ViewMonthComponent,
  @JsonValue('ViewFileComponent')
  ViewFileComponent,
  @JsonValue('ViewDatePeriodComponent')
  ViewDatePeriodComponent,
  @JsonValue('ViewImageComponent')
  ViewImageComponent,
  @JsonValue('ViewVideoComponent')
  ViewVideoComponent,
  @JsonValue('ViewDocumentComponent')
  ViewDocumentComponent,
  @JsonValue('ViewCategoryComponent')
  ViewCategoryComponent,
  @JsonValue('ViewIconComponent')
  ViewIconComponent,
  @JsonValue('ViewPasswordComponent')
  ViewPasswordComponent,
  @JsonValue('ViewLocalizedTextInputComponent')
  ViewLocalizedTextInputComponent,
  @JsonValue('ViewSwitchComponent')
  ViewSwitchComponent,
  @JsonValue('ViewRelationComponent')
  ViewRelationComponent,
  UNKNOWN;

  bool canBeFilterBy() {
    switch (this) {
      case ViewComponentsEnum.BlockComponent:
        return true;
      case ViewComponentsEnum.ViewLabelComponent:
        return true;
      case ViewComponentsEnum.ViewTextComponent:
        return true;
      case ViewComponentsEnum.ViewLongTextComponent:
        return true;
      case ViewComponentsEnum.ViewDateComponent:
        return true;
      case ViewComponentsEnum.ViewNumberComponent:
        return true;
      case ViewComponentsEnum.ViewDateTimeComponent:
        return true;
      case ViewComponentsEnum.ViewTimeComponent:
        return true;
      case ViewComponentsEnum.ViewPhoneComponent:
        return true;
      case ViewComponentsEnum.ViewYearComponent:
        return true;
      case ViewComponentsEnum.ViewMonthYearComponent:
        return true;
      case ViewComponentsEnum.ViewBooleanComponent:
        return true;
      case ViewComponentsEnum.ViewMonthComponent:
        return true;
      case ViewComponentsEnum.ViewFileComponent:
        return false;
      case ViewComponentsEnum.ViewDatePeriodComponent:
        return true;
      case ViewComponentsEnum.ViewImageComponent:
        return false;
      case ViewComponentsEnum.ViewVideoComponent:
        return false;
      case ViewComponentsEnum.ViewDocumentComponent:
        return false;
      case ViewComponentsEnum.ViewCategoryComponent:
        return true;
      case ViewComponentsEnum.ViewIconComponent:
        return false;
      case ViewComponentsEnum.ViewPasswordComponent:
        return true;
      case ViewComponentsEnum.ViewLocalizedTextInputComponent:
        return true;
      case ViewComponentsEnum.ViewSwitchComponent:
        return true;
      case ViewComponentsEnum.ViewRelationComponent:
        return false;
      case ViewComponentsEnum.UNKNOWN:
        return false;
    }
  }
}

/*@JsonValue('TextInputComponent')
  TextInputComponent,

  @JsonValue('NumberComponent')
  NumberComponent,

  @JsonValue('PasswordInputComponent')
  PasswordInputComponent,

  @JsonValue('LabelComponent')
  LabelComponent,

  @JsonValue('LongTextComponent')
  LongTextComponent,

  @JsonValue('DateComponent')
  DateComponent,

  @JsonValue('DateTimeComponent')
  DateTimeComponent,

  @JsonValue('YearComponent')
  YearComponent,

  @JsonValue('MonthYearComponent')
  MonthYearComponent,

  @JsonValue('BooleanComponent')
  BooleanComponent,

  @JsonValue('MonthComponent')
  MonthComponent,

  @JsonValue('FileComponent')
  FileComponent,

  @JsonValue('ImageComponent')
  ImageComponent,

  @JsonValue('CategoryComponent')
  CategoryComponent,

  @JsonValue('VideoComponent')
  VideoComponent,

  @JsonValue('DocumentComponent')
  DocumentComponent,

  @JsonValue('IconComponent')
  IconComponent,

  @JsonValue('SwitchComponent')
  SwitchComponent,

  @JsonValue('LocalizedTextInputComponent')
  LocalizedTextInputComponent,

  @JsonValue('ViewLabelComponent')
  ViewLabelComponent,

  @JsonValue('ViewTextComponent')
  ViewTextComponent,

  @JsonValue('ViewLongTextComponent')
  ViewLongTextComponent,

  @JsonValue('ViewDateComponent')
  ViewDateComponent,

  @JsonValue('ViewNumberComponent')
  ViewNumberComponent,

  @JsonValue('ViewDateTimeComponent')
  ViewDateTimeComponent,

  @JsonValue('ViewTimeComponent')
  ViewTimeComponent,

  @JsonValue('ViewYearComponent')
  ViewYearComponent,

  @JsonValue('ViewMonthYearComponent')
  ViewMonthYearComponent,

  @JsonValue('ViewBooleanComponent')
  ViewBooleanComponent,

  @JsonValue('ViewMonthComponent')
  ViewMonthComponent,

  @JsonValue('ViewFileComponent')
  ViewFileComponent,

  @JsonValue('ViewDatePeriodComponent')
  ViewDatePeriodComponent,

  @JsonValue('RelationComponent')
  RelationComponent,

  @JsonValue('ViewImageComponent')
  ViewImageComponent,

  @JsonValue('ViewVideoComponent')
  ViewVideoComponent,

  @JsonValue('ViewDocumentComponent')
  ViewDocumentComponent,

  @JsonValue('ViewCategoryComponent')
  ViewCategoryComponent,

  @JsonValue('ViewIconComponent')
  ViewIconComponent,

  @JsonValue('ViewPasswordComponent')
  ViewPasswordComponent,

  @JsonValue('ViewLocalizedTextInputComponent')
  ViewLocalizedTextInputComponent,

  @JsonValue('ViewSwitchComponent')
  ViewSwitchComponent,

  @JsonValue('ViewRelationComponent')
  ViewRelationComponent,

  @JsonValue('BlockComponent')
  BlockComponent,

  @JsonValue('DynamicComponentDirective')
  DynamicComponentDirective,

  @JsonValue('DynamicViewComponentDirective')
  DynamicViewComponentDirective,

  @JsonValue('TimeComponent')
  TimeComponent,

  @JsonValue('ImageTableViewComponent')
  ImageTableViewComponent,

  @JsonValue('ImageEntryViewComponent')
  ImageEntryViewComponent,

  @JsonValue('VideoEntryViewComponent')
  VideoEntryViewComponent,

  @JsonValue('VideoTableViewComponent')
  VideoTableViewComponent,

  @JsonValue('EntryViewComponent')
  EntryViewComponent,

  @JsonValue('TableViewComponent')
  TableViewComponent,

  @JsonValue('EntryDetailsViewComponent')
  EntryDetailsViewComponent,

  @JsonValue('EntrySimpleViewComponent')
  EntrySimpleViewComponent,

  @JsonValue('ViewEntryValueComponent')
  ViewEntryValueComponent,

  @JsonValue('DynamicControlErrors')
  DynamicControlErrors,

  @JsonValue('ViewEntryBlockValueComponent')
  ViewEntryBlockValueComponent,

  @JsonValue('AdtLookupTreeSelectorComponent')
  AdtLookupTreeSelectorComponent,

  @JsonValue('AdtLookupSelectorComponent')
  AdtLookupSelectorComponent,*/
