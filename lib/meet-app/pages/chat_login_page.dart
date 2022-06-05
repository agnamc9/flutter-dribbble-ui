import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/gen/assets.gen.dart';
import 'package:flutter_dribbble_ui/meet-app/meet-app.dart';
import 'dart:math' as math;
import 'package:vector_math/vector_math.dart' as vm;

class ChatLoginPage extends StatefulWidget {
  const ChatLoginPage({Key? key}) : super(key: key);

  @override
  State<ChatLoginPage> createState() => _ChatLoginPageState();
}

class _ChatLoginPageState extends State<ChatLoginPage>
    with TickerProviderStateMixin {
  final double roundSize = 200;
  final double picOffset = 20;

  late final AnimationController _animationController = AnimationController(
    duration: const Duration(minutes: 1),
    vsync: this,
  )..repeat();

  List<double> picsSize = [
    25,
    40,
    35,
    40,
  ];

  List<AssetGenImage> pics = [
    Assets.meetApp.images.avatar,
    Assets.meetApp.images.avatar5,
    Assets.meetApp.images.avatar3,
    Assets.meetApp.images.avatar4,
  ];

  @override
  Widget build(BuildContext context) {
    double picSize = roundSize - picOffset;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: SizedBox(
                  width: roundSize,
                  height: roundSize,
                  child: Stack(
                    children: [
                      Container(
                        width: picSize,
                        height: picSize,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.circle,
                          color: Colors.pink.shade50,
                        ),
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(130),
                          child: Assets.meetApp.images.avatar2.image(
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      for (int i = 0; i < pics.length; i++) ...[
                        AnimatedBuilder(
                          animation: _animationController,
                          builder: (context, child) {
                            var value = _animationController.value * 360 +
                                360 / pics.length * i;
                            return Transform.translate(
                              offset: Offset(
                                (picSize / 2 - picsSize[i] / 2) +
                                    (90 * math.cos(vm.radians(value))),
                                (picSize / 2 - picsSize[i] / 2) +
                                    (90 * math.sin(vm.radians(value))),
                              ),
                              child: child,
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: pics[i].image(
                              width: picsSize[i],
                              height: picsSize[i],
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Hello Again !',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Welcome back you've\nbeen missed!",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter username or email",
                        border: InputBorder.none,
                        isDense: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: const [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: InputBorder.none,
                              isDense: true,
                            ),
                            obscureText: true,
                          ),
                        ),
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Recover passwory',
                    style: TextStyle(color: Colors.grey.shade700),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => ChatListPage())));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 1,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Or continue with',
                        style: TextStyle(),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 30,
                        height: 1,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 16,
                        ),
                        child: Assets.meetApp.images.googleSvg.image(
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 16,
                        ),
                        child: Assets.meetApp.images.applePhp.image(
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 16,
                        ),
                        child: Assets.meetApp.images.facebookSvg.image(
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "Not a member?"),
                        TextSpan(
                          text: " Register now",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
