import 'package:flutter/material.dart';

var coverage = [
  Icons.hotel,
  Icons.person,
  Icons.local_hospital,
  Icons.home,
  Icons.description
];

var coverageTitle = [
  {"icon": Icons.hotel, "title": "VVIP Hospital Room", "active": true},
  {"icon": Icons.person, "title": "Medical Drug Covers", "active": true},
  {"icon": Icons.local_hospital, "title": "Skilled Nurse", "active": true},
  {"icon": Icons.home, "title": "Home Health Care", "active": true},
  {
    "icon": Icons.description,
    "title": "Control and Rehab",
    "active": true
  },
  {
    "icon": Icons.airport_shuttle,
    "title": "Ambulance Services",
    "active": false
  },
  {"icon": Icons.remove_red_eye, "title": "Eye Checkup", "active": false},
  {"icon": Icons.hearing, "title": "Ear Checkup", "active": false},
  {"icon": Icons.accessibility, "title": "Full Body checkup", "active": false},
  {"icon": Icons.accessible, "title": "Wheel Chair service", "active": false},
  {
    "icon": Icons.account_balance_wallet,
    "title": "Postpaid Fee",
    "active": false
  },
  {"icon": Icons.people, "title": "Family Cover", "active": false},
];

var productOffers = [
  {
    "header": "OLD LIFE PLAN",
    "content":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/oldman1.png",
    "background": Colors.blue,
    "offers": "15% OFF"
  },
  {
    "header": "PENSION PLAN",
    "content":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/oldman2.png",
    "background": Colors.yellow,
    "offers": "10% OFF"
  },
  {
    "header": "RETIREMENT PLAN",
    "content":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/oldman1.png",
    "background": Colors.green,
    "offers": "2 Months Free"
  },
];

var planSuggestions = [
  {
    "header": "Family plan",
    "content":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/family.png",
    "play_type": 'gold',
    "thoughts": "Happy family GOLD",
    "coverage": coverage.take(3)
  },
  {
    "header": "Home Insurance",
    "content":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/home.png",
    "background": Colors.yellow,
    "play_type": 'bronze',
    "thoughts": "SAFE house bronze",
    "coverage": coverage.take(3)
  },
  {
    "header": "Pension Plan",
    "content":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/pension_plan.png",
    "play_type": 'gold',
    "thoughts": "GOOD OLD DAYS GOLD",
    "coverage": coverage.take(3)
  },
];

var descriptionData = [
  {
    "title": "Part A premium",
    "description":
        """   Most people don't pay a monthly premium for Part A (sometimes called "premium-free Part A"). If you buy Part A, you'll pay up to \$458 each month in 2020. If you paid Medicare taxes for less than 30 quarters, the standard Part A premium is \$458. If you paid Medicare taxes for 30-39 quarters,
 the standard Part A premium is \$252."""
  },
  {
    "title": "Part A hospital inpatient deductible and coinsurance ",
    "description": """You pay:
    \$1,408 deductible for each benefit period
    Days 1-60: \$0 coinsurance for each benefit period
    Days 61-90: \$352 coinsurance per day of each benefit period"""
  },
  {
    "title": "Part B premium",
    "description":
        "   The standard Part B premium amount is \$144.60 (or higher depending on your income)."
  },
  {
    "title": "Part B deductible and coinsurance",
    "description":
        "   \$198. After your deductible is met, you typically pay 20% of the Medicare-approved amount for most doctor services (including most doctor services while you're a hospital inpatient), outpatient therapy, and Durable medical equipment (DME)"
  },
  {
    "title": "Part C premium",
    "description":
        "   The Part C monthly Premium varies by plan. Compare costs for specific Part C plans."
  },
  {
    "title": "Part D premium",
    "description":
        "   The Part D monthly Premium varies by plan (higher-income consumers may pay more). Compare costs for specific Part D plans."
  }
];
