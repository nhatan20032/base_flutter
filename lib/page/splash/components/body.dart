import 'package:base_flutter/constants.dart';
import 'package:base_flutter/page/sign_in/sign_in_page.dart';
import 'package:base_flutter/size_config.dart';
import 'package:flutter/material.dart';

import '../components/splash_content.dart';
import '../../../components/default_button.dart';


class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Đây là base của 1 dự án flutter",
      "image": "assets/images/splash_1.png",
    },
    {
      "text":
          "Bạn sẽ tuân theo bố cục project như này, đây là base dễ maintain và update",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "Nếu tìm được cách bố cục tối ưu hơn thì có thể update",
      "image": "assets/images/splash_3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (content, index) => SplashContent(
                  text: splashData[index]['text'],
                  images: splashData[index]['image'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionalScreenWidth(20)),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(
                          index: index,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInPage.routeName);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}