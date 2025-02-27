import 'package:flutter/material.dart';

import '/models/models.dart';
import '/widgets/widgets.dart';

// class UserCard extends StatelessWidget {
//   const UserCard({
//     Key? key,
//     required this.user,
//   }) : super(key: key);

//   final User user;

//   @override
//   Widget build(BuildContext context) {
//     return Hero(
//       tag: 'user_card',
//       child: Padding(
//         padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height / 1.4,
//           width: MediaQuery.of(context).size.width,
//           child: Stack(
//             children: [
//               UserImage.large(url: user.imageUrls[0]),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                   gradient: LinearGradient(
//                     colors: [
//                       Color.fromARGB(200, 0, 0, 0),
//                       Color.fromARGB(0, 0, 0, 0)
//                     ],
//                     begin: Alignment.bottomCenter,
//                     end: Alignment.topCenter,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 bottom: 30,
//                 left: 20,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       '${user.name}, ${user.age}',
//                       style: Theme.of(context)
//                           .textTheme
//                           .headline2!
//                           .copyWith(color: Colors.white),
//                     ),
//                     Text(
//                       user.jobTitle,
//                       style: Theme.of(context).textTheme.headline3!.copyWith(
//                           color: Colors.white, fontWeight: FontWeight.normal),
//                     ),
//                     SizedBox(
//                       height: 70,
//                       child: ListView.builder(
//                           shrinkWrap: true,
//                           scrollDirection: Axis.horizontal,
//                           itemCount: user.imageUrls.length + 1,
//                           itemBuilder: (builder, index) {
//                             return (index < user.imageUrls.length)
//                                 ? UserImage.small(
//                                     url: user.imageUrls[index],
//                                     margin:
//                                         const EdgeInsets.only(top: 8, right: 8),
//                                   )
//                                 : Container(
//                                     width: 35,
//                                     height: 35,
//                                     child: Icon(
//                                       Icons.info_outline,
//                                       size: 25,
//                                       color: Theme.of(context).primaryColor,
//                                     ),
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: Colors.white,
//                                     ),
//                                   );
//                           }),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'user_card',
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.4,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              // Check if user.imageUrls is not empty before accessing the first element
              if (user.imageUrls.isNotEmpty)
                UserImage.large(url: user.imageUrls[0]),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${user.name}, ${user.age}',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      user.jobTitle,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 70,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: user.imageUrls.length + 1,
                        itemBuilder: (builder, index) {
                          return (index < user.imageUrls.length)
                              ? UserImage.small(
                                  url: user.imageUrls[index],
                                  margin:
                                      const EdgeInsets.only(top: 8, right: 8),
                                )
                              : Container(
                                  width: 35,
                                  height: 35,
                                  child: Icon(
                                    Icons.info_outline,
                                    size: 25,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
