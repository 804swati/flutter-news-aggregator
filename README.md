#  Flutter News Aggregator App

A modern, production-focused **Flutter News Aggregator application** that fetches real-time news from multiple categories and presents them with a clean, interactive UI.

This project is built with scalability, performance, and maintainability in mind — reflecting real-world mobile app development practices.

---

##  Features

- Category-based news (Technology, Business, Sports, etc.)
- Interactive and animated news cards
- Smooth navigation between screens
- REST API integration
- Error handling and loading states
- Clean and scalable folder architecture

---

##  Tech Stack

- **Flutter (Dart)**
- **Provider** – State Management
- **REST API** – News data fetching
- **Material UI**

---

##  App Screens

- **Welcome Screen** – Entry point with app introduction  
- **News Hub** – Category-wise news feed with interactive cards  
- **Article Detail Screen** – Preview and external article access
---

##  Project Structure
-lib/
├── models/
│ └── article.dart
├── providers/
│ └── news_provider.dart
├── screens/
│ ├── welcome_screen.dart
│ ├── home_screen.dart
│ └── detail_screen.dart
├── widgets/
│ └── news_card.dart
└── main.dart


---

##  API Used

- **NewsAPI.org** (or similar REST-based News API)

> Note: API key is excluded from the repository for security reasons.

---

##  Getting Started

### Prerequisites
- Flutter SDK installed
- Android Emulator or Physical Device

### Run the App
```bash
flutter pub get
flutter run

