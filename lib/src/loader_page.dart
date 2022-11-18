import 'package:flutter/material.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({super.key, required this.isLoading, required this.child});

  final bool isLoading;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // MediaQuery.of(context).size.width,
      height: double.infinity, // MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          child,
          if (isLoading) ...[
            Container(
              color: Colors.black.withOpacity(0.4),
            ),
            const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ],
        ],
      ),
    );
  }
}
