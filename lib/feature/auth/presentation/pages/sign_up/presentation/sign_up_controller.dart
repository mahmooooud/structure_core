part of "sign_up_imports.dart";

class SignUpController extends BaseController {
  static const routeName = "SignUpScreenRoute";

  SignUpController();

  @override
  void dispose() {}

  @override
  void setBuildContext(BuildContext widgetContext) {
    context = widgetContext;
  }
  String hintText = AppConfig().currentLanguageCode =="ar"? '0000 000 050' : '050 000 0000';

  TextEditingController emailController = TextEditingController();
  TextEditingController idIqamaaController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GenericBloc<LookupsDataModel> subscriptionType = GenericBloc(null);
  GenericBloc<bool> showPassword = GenericBloc(true);
  TextEditingController passwordController = TextEditingController();
  GenericBloc<bool> agreeTerms = GenericBloc(false);
  GenericBloc<int> step = GenericBloc(1);
  final formKey = GlobalKey<FormState>();
  final GenericBloc<bool> characterLengthBloc = GenericBloc(false);
  final GenericBloc<bool> hasNumberBloc = GenericBloc(false);
  final GenericBloc<bool> hasUppercaseBloc = GenericBloc(false);
  final GenericBloc<bool> hasLowercaseBloc = GenericBloc(false);
  final GenericBloc<bool> hasSpecialCharacterBloc = GenericBloc(false);
  final GenericBloc<bool> passwordHasDataBloc = GenericBloc(false);

  addCustomer() async {
    AddCustomerModel model = AddCustomerModel(
        isAcknowledged: true,
        fullName: fullNameController.text,
        email: emailController.text,
        password: passwordController.text,
        nationalId: idIqamaaController.text,
        phone: replaceFarsiNumber(phoneController.text));
    GetIt.instance.get<SignUpRepository>().addCustomer(model).then((res) {
      res.when(isSuccess: (data) async {
        Navigator.of(context).pop();
        ShowDialog().showElasticDialog(
          context: context,
          insetPadding: EdgeInsets.symmetric(
              vertical: context.height * .31, horizontal: 40.w),
          builder: SuccessDialog(
            title: Translate.s.create_account_successful,
          ),
        );
        // Handle success
      }, isError: (error) {
        // Handle error
      });
    });
  }

  checkPasswordValidation(String text) {
    if (text.isEmpty) {
      characterLengthBloc.onUpdateData(null);
      hasNumberBloc.onUpdateData(null);
      hasUppercaseBloc.onUpdateData(null);
      hasLowercaseBloc.onUpdateData(null);
      hasSpecialCharacterBloc.onUpdateData(null);
    } else {
      if (checkPasswordLength(text)) {
        characterLengthBloc.onUpdateData(true);
      } else {
        characterLengthBloc.onUpdateData(false);
      }
      if (checkPasswordHasNumber(text)) {
        hasNumberBloc.onUpdateData(true);
      } else {
        hasNumberBloc.onUpdateData(false);
      }
      if (checkPasswordHasSpecial(text)) {
        hasSpecialCharacterBloc.onUpdateData(true);
      } else {
        hasSpecialCharacterBloc.onUpdateData(false);
      }
      if (checkPasswordHasUppercase(text)) {
        hasUppercaseBloc.onUpdateData(true);
      } else {
        hasUppercaseBloc.onUpdateData(false);
      }
      if (checkPasswordHasLowercase(text)) {
        hasLowercaseBloc.onUpdateData(true);
      } else {
        hasLowercaseBloc.onUpdateData(false);
      }
    }
  }

  bool checkAllConditionIsValid() {
    bool valid = (characterLengthBloc.state.data ?? false) &&
        (hasNumberBloc.state.data ?? false) &&
        (hasUppercaseBloc.state.data ?? false) &&
        (hasLowercaseBloc.state.data ?? false) &&
        (hasSpecialCharacterBloc.state.data ?? false);

    return valid;
  }
}
