part of "sign_up_imports.dart";

@RoutePage(name: SignUpController.routeName)
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late SignUpController controller;

  @override
  void initState() {
    controller = SignUpController();

    controller.setBuildContext(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.all(16).w,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                Res.square,
                                height: context.height * .2,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Align(
                                          alignment:
                                              AlignmentDirectional.topStart,
                                          child: Icon(Icons.arrow_back_ios))
                                      .press(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  Center(
                                      child: SvgAssets.getWidget(Res.app_logo,
                                          width: 90.w, height: 70.h)),
                                  Gaps.hGap10,
                                ],
                              ),
                              Gaps.vGap16,
                              Column(
                                children: [
                                  CustomText(Translate.s.create_account,
                                      textStyle: context.textTheme.titleLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.w500)),
                                  Gaps.vGap8,
                                  CustomText(Translate.s.create_account_msg,
                                      textAlign: TextAlign.center,
                                      textStyle: context.textTheme.bodySmall!
                                          .copyWith(
                                              color:
                                                  context.colors.titleBlack)),
                                ],
                              ),
                              Gaps.vGap20,
                            ],
                          )
                        ],
                      ),
                      AddInformationStep(
                        controller: controller,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
