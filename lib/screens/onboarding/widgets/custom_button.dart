// import 'package:flutter/material.dart';
// import 'package:meetme/blocs/blocs.dart';
// import 'package:meetme/cubits/signup/signup_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meetme/models/models.dart';

// class CustomButton extends StatelessWidget {
//   final TabController tabController;
//   final String text;
//   final void function;

//   const CustomButton({
//     Key? key,
//     required this.tabController,
//     required this.text,
//     this.function,
//   }) : super(key: key);

//   get uid => null;

//   get userId => null;

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         gradient: LinearGradient(
//           colors: [
//             Theme.of(context).colorScheme.secondary,
//             Theme.of(context).primaryColor,
//           ],
//         ),
//       ),
//       child: ElevatedButton(
//         onPressed: () async {
//           if (tabController.index == 5) {
//             Navigator.pushNamed(context, '/');
//           } else {
//             tabController.animateTo(tabController.index + 1);
//           }

//           if (tabController.index == 2) {
//             await context.read<SignupCubit>().signUpWithCredentials();

//             User user = User(
//               // Use the new method to access SignupCubit state
//               // ignore: use_build_context_synchronously
//               id: newMethod(context).state.user?.uid,
//               name: '',
//               age: 0,
//               gender: '',
//               imageUrls: [],
//               jobTitle: '',
//               interests: [],
//               bio: '',
//               location: '',
//             );
//             context.read<OnboardingBloc>().add(
//                   StartOnboarding(
//                     user: user,
//                   ),
//                 );
//           }
//         },
//         style: ElevatedButton.styleFrom(
//           primary: Colors.transparent,
//           elevation: 0,
//         ),
//         child: Container(
//           width: double.infinity,
//           child: Center(
//             child: Text(
//               text,
//               style: Theme.of(context)
//                   .textTheme
//                   .headline4!
//                   .copyWith(color: Colors.white),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Remove the commented-out line and use this new method
//   SignupCubit newMethod(BuildContext context) => context.read<SignupCubit>();
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetme/blocs/blocs.dart';
import 'package:meetme/cubits/signup/signup_cubit.dart';
import 'package:meetme/models/models.dart';

class CustomButton extends StatelessWidget {
  final TabController tabController;
  final String text;
  final void Function()? function;

  const CustomButton({
    Key? key,
    required this.tabController,
    required this.text,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).primaryColor,
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: () async {
          if (tabController.index == 5) {
            Navigator.pushNamed(context, '/');
          } else {
            tabController.animateTo(tabController.index + 1);
          }

          if (tabController.index == 2) {
            await context.read<SignupCubit>().signUpWithCredentials();

            User user = User(
              id: newMethod(context).state.user?.uid,
              name: '',
              age: 0,
              gender: '',
              imageUrls: [],
              jobTitle: '',
              interests: [],
              bio: '',
              location: '',
            );
            context.read<OnboardingBloc>().add(
                  StartOnboarding(
                    user: user,
                  ),
                );
          }
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
        ),
        child: Container(
          width: double.infinity,
          child: Center(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  SignupCubit newMethod(BuildContext context) => context.read<SignupCubit>();
}
