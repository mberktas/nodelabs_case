import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nodelabs_case/app/di/injectable.dart';
import 'package:nodelabs_case/app/extension/context_extension.dart';
import 'package:nodelabs_case/app/navigation/routes.dart';
import 'package:nodelabs_case/core/logger/logger.dart';
import 'package:nodelabs_case/core/validator/validator.dart';
import 'package:nodelabs_case/feature/auth/presentation/bloc/signup/signup_bloc.dart';
import 'package:nodelabs_case/generated/locale_keys.g.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SignupBloc>(),
      child: const _SignupContent(),
    );
  }
}

class _SignupContent extends StatefulWidget {
  const _SignupContent();

  @override
  State<_SignupContent> createState() => __SignupContentState();
}

class __SignupContentState extends State<_SignupContent> {
  final formKey = GlobalKey<ShadFormState>();

  final nameFormFieldId = 'name';
  final emailFormFieldId = 'email';
  final passwordFormFieldId = 'password';
  final confirmPasswordFormFieldId = 'confirmPassword';
  bool obscurePassword = true;

  bool isLoading = false;

  void submitSignupForm() {
    final form = formKey.currentState;
    if (!(form?.saveAndValidate() ?? false)) {
      return;
    }

    final formData = form!.value;
    final String email = formData[emailFormFieldId] as String;
    final String password = formData[passwordFormFieldId] as String;
    final String confirmPassword =
        formData[confirmPasswordFormFieldId] as String;
    final String name = formData[nameFormFieldId] as String;

    if (password != confirmPassword) {
      ShadToaster.of(context).show(
        ShadToast.destructive(
          description: Text(context.tr(LocaleKeys.signup_passwordsDoNotMatch)),
        ),
      );
      return;
    }

    context.read<SignupBloc>().add(
      SignupEvent.signupRequested(email: email, password: password, name: name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state is SignupLoading) {
          setState(() {
            isLoading = true;
          });
        } else {
          setState(() {
            isLoading = false;
          });
        }
        state.when(
          loading: () {
            logger.d('Signup in progress...');
          },
          success: () {
            logger.d('Signup successful');
            // ShadToaster.of(context).show(
            //   ShadToast(
            //     description: Text(context.tr(LocaleKeys.signup_success)),
            //   ),
            // );
            context.router.popUntilRoot();
            context.router.replacePath(Routes.main.path);
          },
          failure: (message) {
            logger.e('Signup failed: $message');
            ShadToaster.of(
              context,
            ).show(ShadToast.destructive(description: Text(message)));
          },
        );
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(40.w),
            child: SizedBox(
              height: 1.sh,
              width: 1.sw,
              child: ShadForm(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      context.tr(LocaleKeys.signup_title),
                      style: context.textTheme.h4,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      context.tr(LocaleKeys.signup_subtitle),
                      textAlign: TextAlign.center,
                      style: context.textTheme.muted,
                    ),
                    SizedBox(height: 40.h),
                    ShadInputFormField(
                      id: nameFormFieldId,
                      keyboardType: TextInputType.name,
                      leading: const Icon(LucideIcons.user),
                      placeholder: Text(context.tr(LocaleKeys.signup_name)),
                      validator: Validator.validateName,
                    ),
                    SizedBox(height: 12.h),
                    ShadInputFormField(
                      id: emailFormFieldId,
                      keyboardType: TextInputType.emailAddress,
                      leading: const Icon(LucideIcons.mail),
                      placeholder: Text(context.tr(LocaleKeys.signup_email)),
                      validator: Validator.validateEmail,
                    ),
                    SizedBox(height: 12.h),
                    ShadInputFormField(
                      id: passwordFormFieldId,
                      keyboardType: TextInputType.visiblePassword,
                      leading: const Icon(LucideIcons.lock),
                      trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                        child: Icon(
                          obscurePassword
                              ? LucideIcons.eyeOff
                              : LucideIcons.eye,
                        ),
                      ),
                      placeholder: Text(context.tr(LocaleKeys.login_password)),
                      obscureText: obscurePassword,
                      validator: Validator.validatePassword,
                    ),
                    SizedBox(height: 12.h),
                    ShadInputFormField(
                      id: confirmPasswordFormFieldId,
                      keyboardType: TextInputType.visiblePassword,
                      leading: const Icon(LucideIcons.lock),
                      placeholder: Text(
                        context.tr(LocaleKeys.signup_confirmPassword),
                      ),
                      obscureText: obscurePassword,
                      validator: Validator.validatePassword,
                    ),
                    SizedBox(height: 32.h),
                    ShadButton.destructive(
                      enabled: !isLoading,
                      expands: true,
                      child: !isLoading
                          ? Text(context.tr(LocaleKeys.signup_signUp))
                          : CircularProgressIndicator.adaptive(),
                      onPressed: submitSignupForm,
                    ),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          context.tr(LocaleKeys.signup_alreadyHaveAccount),
                          style: context.textTheme.muted,
                        ),
                        SizedBox(width: 4.w),
                        ShadButton.ghost(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            context.router.navigatePath(Routes.login.path);
                          },
                          child: Text(
                            context.tr(LocaleKeys.signup_login),
                            style: context.textTheme.small.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
