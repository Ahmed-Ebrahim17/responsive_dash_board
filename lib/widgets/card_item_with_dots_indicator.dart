import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/card_item.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'dart:async'; // Import Timer

class CardItemWithDotsIndicator extends StatefulWidget {
  const CardItemWithDotsIndicator({super.key});

  @override
  State<CardItemWithDotsIndicator> createState() =>
      _CardItemWithDotsIndicatorState();
}

class _CardItemWithDotsIndicatorState extends State<CardItemWithDotsIndicator> {
  int currentIndex = 0;
  late PageController _pageController;
  late Timer _timer; // Timer for dynamic scrolling

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(_onPageChanged);

    // Start the timer for dynamic scrolling
    _startTimer();
  }

  @override
  void dispose() {
    _pageController.removeListener(_onPageChanged);
    _pageController.dispose();
    _timer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }

  void _onPageChanged() {
    setState(() {
      currentIndex = _pageController.page?.round() ?? 0;
    });
  }

  void _startTimer() {
    // Set a timer to scroll to the next page every 3 seconds
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentIndex < 2) {
        // If not the last page, go to the next page
        _pageController.nextPage(
          duration: Duration(milliseconds: 500), // Animation duration
          curve: Curves.easeInOut, // Animation curve
        );
      } else {
        // If it's the last page, go back to the first page
        _pageController.animateToPage(
          0,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandablePageView(
          controller: _pageController,
          children: List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CardItem(),
            );
          }).toList(),
        ),
        SizedBox(
          height: 19,
        ),
        DotsIndicator(currentIndex: currentIndex)
      ],
    );
  }
}
