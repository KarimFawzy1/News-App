# NewsCloud - Flutter News App

## Overview
NewsCloud is a Flutter-based mobile application that aggregates and displays news articles from various categories including Business, Entertainment, and more. The app features a clean UI with categorized news listings and detailed article views.

## Project Structure

```
assets/  
├── business.avif           # Business category icon  
├── entertainment.avif      # Entertainment category icon  
├── general.avif            # General news icon  
├── health.avif             # Health category icon  
├── science.avif            # Science category icon  
├── sports.avif             # Sports category icon  
└── technology.jpeg         # Technology category icon 

lib/
├── main.dart                # Main application entry point
├── models/
│   ├── article_model.dart   # Data model for news articles
│   └── category_model.dart  # Data model for news categories
├── services/
│   └── news_service.dart    # Service for fetching news data
├── widgets/
│   ├── category_card.dart   # Widget for displaying category cards
│   ├── category_list_view.dart # Widget for category list display
│   ├── news_list_view.dart  # Widget for news list display
│   ├── news_list_view_builder.dart # Widget for building news lists
│   └── news_tile.dart       # Widget for individual news tiles
└── pages/
    ├── category_view.dart   # View for category-specific news
    ├── home_page.dart       # Main home page
    └── news_view.dart       # Detailed news article view
```

## Features

- News categorization (Business, Entertainment, Sports, etc.)
- Clean, responsive UI
- Article details view
- Custom widgets for news display
- API service integration for fetching news data

## Getting Started

### Prerequisites
- Flutter SDK
- Dart
- Android Studio/VSCode with Flutter plugin

### Installation
1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to launch the app

## Dependencies
Add these to your `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  dio: ^5.8.0+1
  assets:
    - assets/
```

## Configuration
You may need to:
1. Set up API keys for news services in `news_service.dart`
2. Configure base URLs for news endpoints

## Screenshots
<img src="https://github.com/user-attachments/assets/834e1793-9d2e-4635-b68f-7fd3ce331ba6" width="300" alt="Screenshot 1">
<img src="https://github.com/user-attachments/assets/8b4d90e4-ac7a-4d65-8ffc-80bb97f1c5cd" width="300" alt="Screenshot 2">
<img src="https://github.com/user-attachments/assets/b7ba98ce-23a5-458d-bd19-5de347a9dbdf" width="300" alt="Screenshot 3">

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


