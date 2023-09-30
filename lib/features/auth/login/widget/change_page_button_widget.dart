
import 'package:flutter/material.dart';

class ChangeSignupBottom extends StatelessWidget {
  const ChangeSignupBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 25,),),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () {

          },
          child: const CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(
              Icons.arrow_circle_right,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}