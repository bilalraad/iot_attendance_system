import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_attendance_system/app_router.gr.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/blocs/users/users_cubit.dart';
import 'package:iot_attendance_system/utils/context_extensions.dart';
import 'package:iot_attendance_system/utils/strings.dart';
import 'package:iot_attendance_system/view/widgets/app_button.dart';
import 'package:iot_attendance_system/view/widgets/app_text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key, this.onResult}) : super(key: key);

  final void Function(bool)? onResult;

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  late UserCubit _userC;
  final _formKey = GlobalKey<FormState>();

  final emailC = TextEditingController();
  final passwordC = TextEditingController();
  bool isObscure = true;

  @override
  void initState() {
    _userC = BlocProvider.of<UserCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height, maxWidth: 500),
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Spacer(),
                Text(
                  Strings.logIn,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: Colors.black),
                ),
                const SizedBox(height: 10),
                Text(
                  Strings.pleaseConfirmIdentity,
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                AppTextField(
                  labelText: Strings.email,
                  controller: emailC,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10),
                AppTextField(
                  labelText: Strings.password,
                  controller: passwordC,
                  obscureText: isObscure,
                  textAlign: TextAlign.left,
                  suffixWidget: InkWell(
                    onTap: () => setState(() => isObscure = !isObscure),
                    child: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
                const SizedBox(height: 10),
                BlocBuilder<UserCubit, BlocsState>(
                  builder: (context, state) {
                    return AppButton(
                        width: 300,
                        backgroundColor: Colors.black,
                        isLoading: state.maybeWhen(
                            loading: () => true, orElse: () => false),
                        onPressed: () async {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }

                          await _userC.logIn(
                              email: emailC.text, password: passwordC.text);
                          _userC.state.whenOrNull(data: (results) {
                            context.showSnackBar(Strings.loggedInSuccess);
                            if (widget.onResult != null) {
                              widget.onResult!.call(true);
                            } else {
                              AutoRouter.of(context)
                                  .replace(const MyHomeRoute());
                            }
                          }, failure: (e) {
                            context.showSnackBar(e.readableMessage,
                                isError: true);
                            return;
                          });
                        },
                        text: Strings.logIn);
                  },
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
