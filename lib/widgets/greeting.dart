// Personalized greeting widget based on the time of day, time of week, time of year, and user's name.

import 'dart:math';

import 'package:flutter/material.dart';

class TimeSpan {
  final int startHour;
  final int endHour;
  final int startDay;
  final int endDay;
  final int startMonth;
  final int endMonth;

  const TimeSpan({
    required this.startHour,
    required this.endHour,
    required this.startDay,
    required this.endDay,
    required this.startMonth,
    required this.endMonth,
  });

  bool contains(DateTime dateTime) {
    return dateTime.hour >= startHour &&
        dateTime.hour <= endHour &&
        dateTime.day >= startDay &&
        dateTime.day <= endDay &&
        dateTime.month >= startMonth &&
        dateTime.month <= endMonth;
  }
}

const timespans = <String, TimeSpan>{
  "always": TimeSpan(
      startHour: 0,
      endHour: 23,
      startDay: 1,
      endDay: 31,
      startMonth: 1,
      endMonth: 12),
  "morning": TimeSpan(
      startHour: 6,
      endHour: 11,
      startDay: 1,
      endDay: 31,
      startMonth: 1,
      endMonth: 12),
  "afternoon": TimeSpan(
      startHour: 12,
      endHour: 17,
      startDay: 1,
      endDay: 31,
      startMonth: 1,
      endMonth: 12),
  "evening": TimeSpan(
      startHour: 18,
      endHour: 23,
      startDay: 1,
      endDay: 31,
      startMonth: 1,
      endMonth: 12),
  "night": TimeSpan(
      startHour: 0,
      endHour: 5,
      startDay: 1,
      endDay: 31,
      startMonth: 1,
      endMonth: 12),
  "weekday": TimeSpan(
      startHour: 0,
      endHour: 23,
      startDay: 1,
      endDay: 5,
      startMonth: 1,
      endMonth: 12),
  "weekend": TimeSpan(
      startHour: 0,
      endHour: 23,
      startDay: 6,
      endDay: 7,
      startMonth: 1,
      endMonth: 12),
  "spring": TimeSpan(
      startHour: 0,
      endHour: 23,
      startDay: 1,
      endDay: 31,
      startMonth: 3,
      endMonth: 5),
  "summer": TimeSpan(
      startHour: 0,
      endHour: 23,
      startDay: 1,
      endDay: 31,
      startMonth: 6,
      endMonth: 8),
  "fall": TimeSpan(
      startHour: 0,
      endHour: 23,
      startDay: 1,
      endDay: 31,
      startMonth: 9,
      endMonth: 11),
  "winter": TimeSpan(
      startHour: 0,
      endHour: 23,
      startDay: 1,
      endDay: 31,
      startMonth: 12,
      endMonth: 2),
  "monday": TimeSpan(
      startHour: 0,
      endHour: 23,
      startDay: 1,
      endDay: 1,
      startMonth: 1,
      endMonth: 12),
};

var greetingTexts = <Map<String, dynamic>>[
  {
    "text": "Good morning, [Name]!",
    "timeSpan": timespans["morning"]!,
  },
  {
    "text": "Hello, [Name]!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Hey, [Name]!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Hi there, [Name]!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Hello there, [Name]!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Good day, [Name]!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Greetings, [Name]!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Rise and shine, [Name]!",
    "timeSpan": timespans["morning"]!,
  },
  {
    "text": "Embrace the day, [Name]!",
    "timeSpan": timespans["morning"]!,
  },
  {
    "text": "Sending positive vibes, [Name]!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Keep shining, [Name]!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Hi, beautiful!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Hello, superstar!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Hey, rockstar!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Hi there, warrior!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Hello there, champion!",
    "timeSpan": timespans["always"]!,
  },
];

var greetingSubtexts = <Map<String, dynamic>>[
  {
    "text": "It's time to get up and get ready for the day ahead.",
    "timeSpan": timespans["morning"]!,
  },
  {
    "text": "Rise and shine, it's a new day.",
    "timeSpan": timespans["morning"]!,
  },
  {
    "text": "The morning is a perfect time to get things done.",
    "timeSpan": timespans["morning"]!,
  },
  {
    "text": "You're doing amazing. Keep up the great work.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Don't forget to give yourself credit for how far you've come.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Your resilience inspires us all.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Treat yourself with kindness and compassion today.",
    "timeSpan": timespans["morning"]!,
  },
  {
    "text": "You are loved and appreciated.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Your potential knows no bounds.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Inhale confidence, exhale doubt. You've got this.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "A new day, a new opportunity. Make it count!",
    "timeSpan": timespans["morning"]!,
  },
  {
    "text": "Take a moment to appreciate the beauty around you.",
    "timeSpan": timespans["morning"]!,
  },
  {
    "text": "Afternoon is the time to recharge and refuel.",
    "timeSpan": timespans["afternoon"]!,
  },
  {
    "text": "Embrace the golden hour and enjoy the magic of the evening.",
    "timeSpan": timespans["evening"]!,
  },
  {
    "text": "Nighttime is when dreams come alive. Dream big!",
    "timeSpan": timespans["night"]!,
  },
  {
    "text": "Weekdays are an opportunity for growth and learning.",
    "timeSpan": timespans["weekday"]!,
  },
  {
    "text": "Weekends are for adventures and creating lasting memories.",
    "timeSpan": timespans["weekend"]!,
  },
  {
    "text": "Spring brings renewal and a fresh start. Embrace the change!",
    "timeSpan": timespans["spring"]!,
  },
  {
    "text": "Summer is a season of fun and sun. Enjoy every moment!",
    "timeSpan": timespans["summer"]!,
  },
  {
    "text":
        "Fall is a time for reflection and gratitude. Count your blessings!",
    "timeSpan": timespans["fall"]!,
  },
  {
    "text": "Winter is the season of coziness and warmth. Stay snug!",
    "timeSpan": timespans["winter"]!,
  },
  {
    "text": "Every morning is a fresh start. Seize the day!",
    "timeSpan": timespans["morning"]!,
  },
  {
    "text": "Make today amazing and leave a positive impact.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Take a deep breath and let go of stress. You're doing great!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Remember to take breaks and take care of yourself throughout the day.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Your journey is unique. Embrace it and enjoy the ride!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "You are capable of incredible things. Believe in yourself!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Spread kindness and positivity wherever you go.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Pause and appreciate the small moments that make life beautiful.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Keep pushing forward. You're closer to your goals than you think!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Celebrate your progress, no matter how small. You're making a difference!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Allow yourself to rest and recharge. You deserve it!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Your hard work and dedication will lead to great achievements.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Challenges are opportunities in disguise. Embrace them and grow!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Embrace the unknown and let curiosity guide you on new adventures.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Remember to take care of your mind, body, and soul. You are important!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Believe in your abilities and trust the process. You are capable!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Surround yourself with positivity and watch your world transform.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "The present moment is all we have. Make it meaningful!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Your smile brightens the world. Share it generously!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Step out of your comfort zone and embrace the growth that follows.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Take a deep breath. You have the strength to overcome any challenge!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Your unique perspective is valuable. Share it with the world!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Success is not a destination but a journey. Enjoy the ride!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Keep your goals in sight and let determination guide your steps.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Your efforts make a difference. Keep going, you're making an impact!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Nurture your passions and watch them bloom into something beautiful.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Stay focused on your dreams. They hold the power to create your reality.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Let go of the past and embrace the possibilities of the present moment.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "You are a magnet for abundance and success. Believe in your worth!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Create a vision for your future and take steps towards its realization.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Celebrate your achievements, no matter how small. You're making progress!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Trust yourself. You have all the answers within you.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Your positive energy is contagious. Spread it far and wide!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Don't be afraid to take risks. They often lead to the greatest rewards.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Embrace the power of gratitude and watch your blessings multiply.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Your unique talents are needed in this world. Share them generously!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Believe in your dreams, for they hold the power to shape your reality.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "The world needs your light. Shine brightly and inspire others!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Every day is a fresh start. Embrace the opportunity to create something amazing.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "You have the power to turn challenges into stepping stones for success.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Your dreams are within reach. Keep striving and never give up!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Stay true to yourself and let your authenticity shine.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Your positive mindset attracts positive outcomes. Think happy thoughts!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "You are capable of achieving greatness. Believe in your potential!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Remember to celebrate the progress you've made on your journey.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Success starts with self-belief. Trust in your abilities!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Your actions today create the future you desire. Choose wisely!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Never underestimate the power of a kind word or gesture.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "You have the strength and resilience to overcome any obstacle.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text": "Your potential is limitless. Keep pushing the boundaries!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Allow yourself to rest and recharge. It's essential for your well-being.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Take a moment to appreciate how far you've come. You're doing great!",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Your journey may have obstacles, but they are stepping stones to your success.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Believe in yourself and trust that you have the strength to overcome any challenge.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Embrace change and see it as an opportunity for growth and self-discovery.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Your smile is contagious. Share it generously and brighten someone's day.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "You have the power to create a life you love. Start by believing in yourself.",
    "timeSpan": timespans["always"]!,
  },
  {
    "text":
        "Your dreams matter. Pursue them relentlessly and watch them come to life.",
    "timeSpan": timespans["always"]!,
  },
];

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    final suitableGreetingTexts = greetingTexts
        .where((greeting) => greeting["timeSpan"].contains(DateTime.now()))
        .toList();
    final greetingText =
        suitableGreetingTexts[Random().nextInt(suitableGreetingTexts.length)];

    final suitableGreetingSubtexts = greetingSubtexts
        .where((greeting) => greeting["timeSpan"].contains(DateTime.now()))
        .toList();
    final greetingSubtext = suitableGreetingSubtexts[
        Random().nextInt(suitableGreetingSubtexts.length)];

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            greetingText["text"].replaceAll("[Name]", "John"),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
            child: Text(
              greetingSubtext["text"],
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).textTheme.headlineMedium?.color,
                    fontWeight: FontWeight.w100,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
