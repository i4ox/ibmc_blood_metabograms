import 'package:flutter/material.dart';

class IbmcAnimatedButton extends StatelessWidget {

  final VoidCallback onClick;
  final Widget child;
  final int duration;

  const IbmcAnimatedButton({
    super.key,
    required this.onClick,
    required this.child,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // style: ButtonStyle(),
      onPressed: onClick,
      child: AnimatedContainer(
        duration: Duration(milliseconds: duration),
        // padding: child is Text
        //     ? const EdgeInsets.symmetric(vertical: 12.0, horizontal: 32.0)
        //     : const EdgeInsets.symmetric(vertical: 12.0, horizontal: 5),
        child: child,       
      ),
    );
  }
}
