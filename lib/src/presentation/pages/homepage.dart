import 'package:firebase_auth_app/src/core/constants/app.colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: AppColors.brackground,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 80),
            const Text(
              'Hello Again!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'Wellcome back you\'ve been missed!',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  color: AppColors.lightGrey,
                ),
              ),
            ),
            const SizedBox(height: 32),
            TextFormField(
              onChanged: (_) {},
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter username",
                  hintStyle: const TextStyle(
                    fontFamily: "Poppins",
                  )),
            ),
            const SizedBox(height: 12),
            TextFormField(
              onChanged: (_) {},
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "Password",
                hintStyle: const TextStyle(
                  fontFamily: "Poppins",
                ),
                suffixIcon: const Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 14),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Recovery Password',
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: AppColors.lightGrey,
                ),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 1,
                  width: 80,
                  decoration: const BoxDecoration(
                    color: AppColors.lightGrey,
                  ),
                ),
                const Text(
                  "Or continue with",
                  style: TextStyle(fontSize: 13, fontFamily: "Poppins"),
                ),
                Container(
                  height: 1,
                  width: 80,
                  decoration: const BoxDecoration(
                    color: AppColors.lightGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AlternativeLogin(iconAsset: 'assets/icons/googleicon.svg'),
                AlternativeLogin(iconAsset: 'assets/icons/icons8-facebook.svg'),
                AlternativeLogin(
                    iconAsset: 'assets/icons/icons8-linkedin-circled.svg'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Not a member ?',
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  'Register Now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AlternativeLogin extends StatelessWidget {
  String iconAsset;
  AlternativeLogin({Key? key, required this.iconAsset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: Colors.white),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: IconButton(
          icon: SvgPicture.asset(iconAsset),
          onPressed: () {},
        ),
      ),
    );
  }
}
