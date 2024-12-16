import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class RatingBar extends StatefulWidget {
  final int maxRating;
  final double initialRating;
  final Color activeColor;
  final Color inactiveColor;
  final Function(double) onRatingUpdate;

  const RatingBar({
    Key? key,
    this.maxRating = 5,
    this.initialRating = 0.0,
    this.activeColor = Colors.amber,
    this.inactiveColor = Colors.grey,
    required this.onRatingUpdate,
  }) : super(key: key);

  @override
  _RatingBarState createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  late double _currentRating;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.maxRating, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _currentRating = index + 1.0;
            });
            widget.onRatingUpdate(_currentRating);
          },
          child: Icon(
            Icons.star,
            color: index < _currentRating ? widget.activeColor : widget.inactiveColor,
          ),
        );
      }),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Rating Bar'),
        ),
        body: Center(
          child: RatingBar(
            initialRating: 3.0,
            maxRating: 5,
            activeColor: Colors.amber,
            inactiveColor: Colors.grey,
            onRatingUpdate: (rating) {
              print('Selected Rating: $rating');
            },
          ),
        ),
      ),
    );
  }
}
