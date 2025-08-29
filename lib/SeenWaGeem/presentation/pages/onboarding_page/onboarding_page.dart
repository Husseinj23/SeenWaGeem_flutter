import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/injection_container.dart';
import '../../bloc/onboarding_bloc/onboarding_bloc.dart';
import '../../bloc/onboarding_bloc/onboarding_event.dart';
import '../../bloc/onboarding_bloc/onboarding_state.dart';
import '../login_page/login_page.dart';

class OnboardingContent {
  final String image;
  final String text;
  OnboardingContent({required this.image, required this.text});
}

final List<OnboardingContent> contents = [
  OnboardingContent(
    image: 'assets/images/onboarding/image1.png',
    text:
        'قم بإنشاء الاختبارات ومشاركتها والاستمتاع بها في أي وقت وفي أي مكان.',
  ),
  OnboardingContent(
    image: 'assets/images/onboarding/image2.png',
    text: 'تخصيص اختباراتك وإضافة تفاصيل إضافية لتلبية احتياجاتك التعليمية.',
  ),
  OnboardingContent(
    image: 'assets/images/onboarding/image3.png',
    text: 'استمتع بالمسابقات والتحديات لزيادة متعة التعلم.',
  ),
];

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return BlocProvider(
      create: (context) => sl<OnboardingBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: contents.length,
                  onPageChanged: (index) {
                    context.read<OnboardingBloc>().add(
                      OnboardingEvent.pageChanged(index),
                    );
                  },
                  itemBuilder: (_, i) => _OnboardingCard(content: contents[i]),
                ),
              ),
              Expanded(
                flex: 1,
                child: BlocBuilder<OnboardingBloc, OnboardingState>(
                  builder: (context, state) {
                    return _OnboardingControls(
                      pageIndex: state.pageIndex,
                      onNext: () {
                        if (state.pageIndex == contents.length - 1) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        } else {
                          context.read<OnboardingBloc>().add(
                            OnboardingEvent.pageChanged(state.pageIndex + 1),
                          );
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OnboardingCard extends StatelessWidget {
  final OnboardingContent content;
  const _OnboardingCard({required this.content});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(content.image, height: 250),
          const SizedBox(height: 40),
          Text(
            content.text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class _OnboardingControls extends StatelessWidget {
  final int pageIndex;
  final VoidCallback onNext;
  const _OnboardingControls({required this.pageIndex, required this.onNext});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => _DotIndicator(isActive: index == pageIndex),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: onNext,
            child: Text(pageIndex == contents.length - 1 ? 'ابدأ' : 'التالي'),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _DotIndicator extends StatelessWidget {
  final bool isActive;
  const _DotIndicator({required this.isActive});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 8,
      width: isActive ? 24 : 8,
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).colorScheme.primary : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
