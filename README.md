#  Flutter News Aggregator App

A modern, production-focused **Flutter News Aggregator application** that fetches real-time news from multiple categories and presents them with a clean, interactive UI.

This project is built with scalability, performance, and maintainability in mind reflecting real-world mobile app development practices.

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
lib/
├── models/
│   └── article.dart            # News article data model
│
├── providers/
│   └── news_provider.dart      # State management & API 
│
├── screens/
│   ├── welcome_screen.dart     # App entry / landing screen
│   ├── home_screen.dart        # News hub with categories
│   └── detail_screen.dart      # News detail access
│
├── widgets/
│   └── news_card.dart          # Reusable animated news card UI
│
└── main.dart                   # App entry point


---

##  API Used

- **NewsAPI.org** 

---

##  Getting Started

### Prerequisites
- Flutter SDK installed
- Android Emulator or Physical Device

### Run the App
```bash
flutter pub get
flutter run

