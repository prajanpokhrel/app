import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/screens/onboarding/widgets/widgets.dart';

class Start extends StatelessWidget {
  final TabController tabController;

  const Start({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: SvgPicture.asset(
                  'assets/couple.svg',
                ),
              ),
              SizedBox(height: 50),
              Text('Welcome to Meetme',
                  style: Theme.of(context).textTheme.headline2),
              SizedBox(height: 20),
              Text(
                'Meetme is new dating app where you can find your patner',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(height: 1.8),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          CustomButton(tabController: tabController, text: 'START')
        ],
      ),
    );
  }
}
