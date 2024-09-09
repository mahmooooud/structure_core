
enum ParentLookupTypes {
  generalEductionDepartment,
  eductionDepartment,
  eductionDepartmentSignature,
  eductionOffice,
  school,
  safty;

  String getLookupApiId() {
    switch (this) {
      case ParentLookupTypes.generalEductionDepartment:
        return "3";
      case ParentLookupTypes.eductionDepartment:
        return '4';
      case ParentLookupTypes.eductionDepartmentSignature:
        return '4';
      case ParentLookupTypes.eductionOffice:
        return '5';
      case ParentLookupTypes.school:
        return '6';
      case ParentLookupTypes.safty:
        return '9';

      default:
        return "12";
    }
  }
}
