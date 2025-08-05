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
import 'package:nodelabs_case/feature/auth/presentation/bloc/login/login_bloc.dart';
import 'package:nodelabs_case/generated/locale_keys.g.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginBloc>(),
      child: _LoginContent(),
    );
  }
}

class _LoginContent extends StatefulWidget {
  const _LoginContent();

  @override
  State<_LoginContent> createState() => __LoginContentState();
}

class __LoginContentState extends State<_LoginContent> {
  final formKey = GlobalKey<ShadFormState>();
  final emailFormFieldId = 'email';
  final passwordFormFieldId = 'password';
  bool obscurePassword = true;
  bool isLoading = false;

  void submitLoginForm() {
    final form = formKey.currentState;
    if (!(form?.saveAndValidate() ?? false)) {
      return;
    }

    final formData = form!.value;
    final String email = formData[emailFormFieldId] as String;
    final String password = formData[passwordFormFieldId] as String;

    context.read<LoginBloc>().add(
      LoginEvent.loginRequested(email: email, password: password),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
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
            logger.d('Login in progress...');
          },
          success: () {
            logger.d('Login successful');
            // ShadToaster.of(context).show(
            //   ShadToast(
            //     description: Text(context.tr(LocaleKeys.login_success)),
            //   ),
            // );

            context.router.popUntilRoot();
            context.router.replacePath(Routes.main.path);
          },
          error: (error) {
            logger.e('Login failed: $error');
            ShadToaster.of(context).show(
              ShadToast.destructive(
                description: Text(
                  context.tr(LocaleKeys.login_error, args: [error]),
                ),
              ),
            );
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
                      context.tr(LocaleKeys.login_title),
                      style: context.textTheme.h4,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      context.tr(LocaleKeys.login_subtitle),
                      textAlign: TextAlign.center,
                      style: context.textTheme.muted,
                    ),
                    SizedBox(height: 40.h),
                    ShadInputFormField(
                      id: emailFormFieldId,
                      keyboardType: TextInputType.emailAddress,
                      leading: const Icon(LucideIcons.mail),
                      placeholder: Text(context.tr(LocaleKeys.login_email)),
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
                    SizedBox(height: 32.h),
                    ShadButton.destructive(
                      enabled: !isLoading,
                      expands: true,
                      child: !isLoading
                          ? Text(context.tr(LocaleKeys.login_login))
                          : CircularProgressIndicator.adaptive(),
                      onPressed: submitLoginForm,
                    ),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          context.tr(LocaleKeys.login_dontHaveAccount),
                          style: context.textTheme.muted,
                        ),
                        SizedBox(width: 4.w),
                        ShadButton.ghost(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            context.router.pushPath(Routes.signup.path);
                          },
                          child: Text(
                            context.tr(LocaleKeys.login_signUp),
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
