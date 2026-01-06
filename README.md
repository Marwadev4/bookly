# Bookly App

Bookly is a Flutter application that allows users to browse and search for books using the Google Books API. It features a modern, clean UI with dark mode support.

## Features

- **Home Feed**:
    - **Featured Books**: A horizontally scrollable list of featured books.
    - **Newest Books**: A vertical list displaying the newest arrivals.
- **Book Details**: Detailed view of a selected book (implementation details pending verification).
- **Search**: Search functionality to find specific books.
- **Responsive Design**: Adapts to different screen sizes using `flutter_screenutil`.

## ScreenShots


## Architecture

This project follows **Clean Architecture** principles to ensure separation of concerns and maintainability:

- **Presentation Layer**: detailed UI code and State Management (Bloc/Cubit).
- **Domain Layer**: (Implied/Pending) Business logic and entities.
- **Data Layer**: Repositories and Data Sources (API calls).

### State Management

The app uses **Cubit** (from `flutter_bloc`) for state management to handle UI states (Loading, Success, Failure).

### Networking

- Uses **Dio** for making HTTP requests to the Google Books API.
- **Dartz** is used for functional error handling (`Either<Failure, Success>`).

## Technologies & Packages

- **Flutter** & **Dart**
- **GoRouter**: For navigation.
- **Dio**: For network requests.
- **GetIt**: For dependency injection.
- **CachedNetworkImage**: For efficient image loading and caching.
- **Google Fonts**: For custom typography.
- **Flutter ScreenUtil**: For responsive UI sizing.

## Project Structure

```
lib/
├── core/                   # Core utilities, errors, and shared components
├── features/               # Feature-based modules (Home, Search, Splash)
│   ├── home/               # Home feature (Presentation, Data)
│   ├── search/             # Search feature
│   └── splash/             # Splash screen
└── main.dart               # Entry point and App configuration
```

## Installation

1. **Clone the repository**:
   ```bash
   git clone [repository_url]
   ```

2. **Navigate to the project directory**:
   ```bash
   cd bookly
   ```

3. **Install dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run the app**:
   ```bash
   flutter run
   ```