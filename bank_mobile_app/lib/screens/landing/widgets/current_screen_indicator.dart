import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class CurrentScreenIndicator extends StatelessWidget {
  final int currentIndex;

  CurrentScreenIndicator({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 45,
      left: 0, // Adjusted to 0 to center the entire column
      right: 0, // Adjusted to 0 to center the entire column
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the entire column
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the row of indicators
              children: List.generate(3, (index) {
                return Flexible(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(
                      8, 0, 8, 0, // Adjusted margins
                    ),
                    height: 10,
                    width: 15,
                    child: returnContainer(
                      index == currentIndex ? kPrimaryAppColor : kDotColor.withOpacity(.5),
                      10,
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                //firstInstallSetter();
                //Helpers.moveToNextPage(context,new SignUpPage());
              },
              child: Container(
                width: 201,
                height: 59,
                decoration: BoxDecoration(
                    color: kPrimaryAppColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: kPrimaryAppColor.withOpacity(0.3),
                        spreadRadius: 50,
                        offset: const Offset(0, 5),
                        blurRadius: 100,
                      )
                    ]
                ),
                child: const Center(
                  child: Text(
                    continueText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kPrimaryColorWhite,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget returnContainer(Color color, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
